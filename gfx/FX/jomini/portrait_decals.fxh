includes = {
	"jomini/texture_decals_base.fxh"
	"jomini/portrait_user_data.fxh"
	"GH_portrait_effects.fxh"
	# MOD(godherja)
	"GH_portrait_constants.fxh"
	# END MOD
}

PixelShader =
{
	TextureSampler DecalDiffuseArray
	{
		Ref = JominiPortraitDecalDiffuseArray
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
		type = "2darray"
	}

	TextureSampler DecalNormalArray
	{
		Ref = JominiPortraitDecalNormalArray
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
		type = "2darray"
	}

	TextureSampler DecalPropertiesArray
	{
		Ref = JominiPortraitDecalPropertiesArray
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Wrap"
		SampleModeV = "Wrap"
		type = "2darray"
	}

	BufferTexture DecalDataBuffer
	{
		Ref = JominiPortraitDecalData
		type = uint
	}

	Code
	[[		
		struct DecalData
		{
			uint _DiffuseIndex;
			uint _NormalIndex;
			uint _PropertiesIndex;
			uint _BodyPartIndex;

			uint _DiffuseBlendMode;
			uint _NormalBlendMode;
			uint _PropertiesBlendMode;
			float _Weight;

			uint2 _AtlasPos;
			float2 _UVOffset;
			uint2 _UVTiling;

			uint _AtlasSize;
		};

		DecalData GetDecalData( int Index )
		{
			// Data for each decal is stored in multiple texels as specified by DecalData

			DecalData Data;

			Data._DiffuseIndex = PdxReadBuffer( DecalDataBuffer, Index );
			Data._NormalIndex = PdxReadBuffer( DecalDataBuffer, Index + 1 );
			Data._PropertiesIndex = PdxReadBuffer( DecalDataBuffer, Index + 2 );
			Data._BodyPartIndex = PdxReadBuffer( DecalDataBuffer, Index + 3 );

			Data._DiffuseBlendMode = PdxReadBuffer( DecalDataBuffer, Index + 4 );
			Data._NormalBlendMode = PdxReadBuffer( DecalDataBuffer, Index + 5 );
			if ( Data._NormalBlendMode == BLEND_MODE_OVERLAY )
			{
				Data._NormalBlendMode = BLEND_MODE_OVERLAY_NORMAL;
			}
			Data._PropertiesBlendMode = PdxReadBuffer( DecalDataBuffer, Index + 6 );
			Data._Weight = Unpack16BitUnorm( PdxReadBuffer( DecalDataBuffer, Index + 7 ) );

			Data._AtlasPos = uint2( PdxReadBuffer( DecalDataBuffer, Index + 8 ), PdxReadBuffer( DecalDataBuffer, Index + 9 ) );
			Data._UVOffset = float2( Unpack16BitUnorm( PdxReadBuffer( DecalDataBuffer, Index + 10 ) ), Unpack16BitUnorm( PdxReadBuffer( DecalDataBuffer, Index + 11 ) ) );
			Data._UVTiling = uint2( PdxReadBuffer( DecalDataBuffer, Index + 12 ), PdxReadBuffer( DecalDataBuffer, Index + 13 ) );

			Data._AtlasSize = PdxReadBuffer( DecalDataBuffer, Index + 14 );

			return Data;
		}

		// MOD(godherja)

		//
		// Macros
		//

		#ifndef PDX_OPENGL
			#define GH_PdxTex2DArrayLoad(samp,uvi,lod) (samp)._Texture.Load( int4((uvi), (lod)) )
		#else
			#define GH_PdxTex2DArrayLoad texelFetch
		#endif

		//
		// Service
		//

		// float GH_MipLevelToLod(float MipLevel)
		// {
		// 	// This function (originally GetMIP6Level()) was graciously provided by Buck (EK2).

		// 	#ifndef PDX_OPENGL
		// 		// If running on DX, use the below to get decal texture size.
		// 		float3 TextureSize;
		// 		DecalDiffuseArray._Texture.GetDimensions( TextureSize.x , TextureSize.y , TextureSize.z );
		// 	#else
		// 		// If running on OpenGL, use the below to get decal texture size.
		// 		ivec3 TextureSize = textureSize(DecalDiffuseArray, 0);
		// 	#endif

		// 	// Get log base 2 for current texture size (1024px - 10, 512px - 9, etc.)
		// 	// Take that away from 10 to find the current MIP level.
		// 	// Take that away from MipLevel to find which MIP We need to sample in the texture buffer to retrieve the "absolute" MIP6 containing our encoded pixels

		// 	return MipLevel - (10.0f - log2(TextureSize.x));
		// }

		// GH_SMarkerTexels GH_ExtractMarkerTexels(uint DiffuseIndex)
		// {
		// 	// Max pixel coordinate for the GH_MARKER_MIP_LEVEL-th mip-map.
		// 	// TODO: Actually use a formula based on GH_MARKER_MIP_LEVEL here, instead of a literal?
		// 	static const int MAX_MARKER_PIXEL_COORD = 15; // 6th mip-map is 16x16 for decals

		// 	static int MarkerLod = int(GH_MipLevelToLod(GH_MARKER_MIP_LEVEL));

		// 	static const int2 TOP_LEFT_UV     = int2(0, 0);
		// 	static const int2 TOP_RIGHT_UV    = int2(MAX_MARKER_PIXEL_COORD, 0);
		// 	static const int2 BOTTOM_RIGHT_UV = int2(MAX_MARKER_PIXEL_COORD, MAX_MARKER_PIXEL_COORD);
		// 	static const int2 BOTTOM_LEFT_UV  = int2(0, MAX_MARKER_PIXEL_COORD);

		// 	GH_SMarkerTexels MarkerTexels;
		// 	MarkerTexels.TopLeftTexel     = GH_PdxTex2DArrayLoad(DecalDiffuseArray, int3(TOP_LEFT_UV, DiffuseIndex), MarkerLod);
		// 	MarkerTexels.TopRightTexel    = GH_PdxTex2DArrayLoad(DecalDiffuseArray, int3(TOP_RIGHT_UV, DiffuseIndex), MarkerLod);

		// 	// #ifndef PIXEL_SHADER
		// 	// 	MarkerTexels.BottomRightTexel = GH_PdxTex2DArrayLoad(DecalDiffuseArray, int3(BOTTOM_RIGHT_UV, DiffuseIndex), MarkerLod);
		// 	// 	MarkerTexels.BottomLeftTexel  = GH_PdxTex2DArrayLoad(DecalDiffuseArray, int3(BOTTOM_LEFT_UV, DiffuseIndex), MarkerLod);
		// 	// #else
		// 	// 	// The other two corners are not currently used by pixel shaders, so no use sampling them from there.
		// 	// 	MarkerTexels.BottomRightTexel = float4(0.0f, 0.0f, 0.0f, 0.0f);
		// 	// 	MarkerTexels.BottomLeftTexel  = float4(0.0f, 0.0f, 0.0f, 0.0f);
		// 	// #endif // !PIXEL_SHADER

		// 	return MarkerTexels;
		// }

		//
		// Interface
		//

		// GH_SPortraitEffect GH_ScanMarkerDecals(int DecalsCount)
		// {
		// 	int From = 0;
		// 	int To   = DecalsCount;

		// 	// NOTE: The following is based on AddDecals() and needs
		// 	//       to be kept in sync with it on vanilla updates.
		// 	const int TEXEL_COUNT_PER_DECAL = 15;
		// 	int FromDataTexel = From * TEXEL_COUNT_PER_DECAL;
		// 	int ToDataTexel   = To * TEXEL_COUNT_PER_DECAL;

		// 	const uint MAX_VALUE = 65535;
		// 	// END NOTE

		// 	GH_SPortraitEffect Effect;
		// 	Effect.Type  = GH_PORTRAIT_EFFECT_TYPE_NONE;
		// 	Effect.Param = float4(0.0f, 0.0f, 0.0f, 0.0f);

		// 	for (int i = FromDataTexel; i <= ToDataTexel; i += TEXEL_COUNT_PER_DECAL)
		// 	{
		// 		DecalData Data = GetDecalData(i);

		// 		// TODO: Filter by bodypart index for an early continue?

		// 		if (Data._DiffuseIndex >= MAX_VALUE || Data._Weight <= 0.001f)
		// 			continue;

		// 		// GH_SMarkerTexels MarkerTexels = GH_ExtractMarkerTexels(Data._DiffuseIndex);

		// 		//if (GH_MarkerTexelEquals(MarkerTexels.TopLeftTexel, GH_MARKER_TOP_LEFT_FLAT))
		// 			//Effect.Type = GH_PORTRAIT_EFFECT_TYPE_FLAT;


		// 		//# HERE
		// 		// if (GH_MarkerTexelEquals(MarkerTexels.TopLeftTexel, GH_MARKER_TOP_LEFT_STATUE))
		// 		// 	Effect.Type = GH_PORTRAIT_EFFECT_TYPE_STATUE;

		// 		if (Effect.Type != GH_PORTRAIT_EFFECT_TYPE_NONE)
		// 		{
		// 			Effect.Param = MarkerTexels.TopRightTexel;
		// 			break;
		// 		}
		// 	}

		// 	return Effect;
		// }
		// END MOD

		// MOD(elf-destiny) tattoo ink colour -- generated by harness/tattoo/ink_colour.py
		//
		// Every Elf Destiny tattoo texture is drawn in its SLOT's signature near-black,
		// RGB = (8r, 4g, 8b)/255 with r, b in {0,1} and g in {1..4} -- black on screen,
		// but unique per slot, and unlike scars, makeup or vanilla decals. The ruler
		// designer's ink colour picker stores hue / saturation / brightness per target
		// (All tattoos, or one slot); a trait portrait modifier turns each into an
		// invisible marker decal (transparent texture, weight = the value) whose
		// uv_tiling { 61 N } names it: 71/73/79 = All, 100 + 3 * slot + channel = one
		// slot. A slot's ink takes its own colour, else the All colour, else black.
		// Under another mod's portrait shader the markers draw nothing and ink is its
		// signature near-black.
		float3 ED_Hsv( float H, float S, float V )
		{
			float3 Rgb = saturate( abs( frac( H + float3( 1.0f, 2.0f / 3.0f, 1.0f / 3.0f ) ) * 6.0f - 3.0f ) - 1.0f );
			return V * lerp( float3( 1.0f, 1.0f, 1.0f ), Rgb, S );
		}

		// Marker weight -> 0..1. Set weights are floored at 0.004 (zero-weight decals
		// are dropped), so undo that: w = 0.004 + x * 0.992.
		float ED_PickerValue( float W )
		{
			return saturate( ( W - 0.004f ) / 0.992f );
		}

		float ED_ToSrgb( float L )
		{
			return ( L <= 0.0031308f ) ? L * 12.92f : 1.055f * pow( L, 1.0f / 2.4f ) - 0.055f;
		}

		// Which slot a sample of Elf Destiny ink belongs to: slot = r * 8 + (g - 1) * 2
		// + b, or -1 for anything else. The decal array may be sampled as UNORM (a
		// signature green is then >= 1/63) or as sRGB (linearised: < 0.5/63), which
		// tells which; sRGB samples are re-encoded before decoding.
		int ED_InkSlot( float3 Rgb )
		{
			float3 C = Rgb;
			if ( C.g * 63.0f < 0.5f )
			{
				C = float3( ED_ToSrgb( C.r ), ED_ToSrgb( C.g ), ED_ToSrgb( C.b ) );
			}
			float3 K = C * float3( 31.0f, 63.0f, 31.0f );
			float3 N = floor( K + 0.5f );
			if ( abs( K.x - N.x ) > 0.3f || abs( K.y - N.y ) > 0.3f || abs( K.z - N.z ) > 0.3f )
			{
				return -1;
			}
			int Rr = int( N.x );
			int Gg = int( N.y );
			int Bb = int( N.z );
			if ( Rr < 0 || Rr > 1 || Bb < 0 || Bb > 1 || Gg < 1 || Gg > 4 )
			{
				return -1;
			}
			return Rr * 8 + ( Gg - 1 ) * 2 + Bb;
		}

		// A slot's own colour: its markers are uv_tiling { 61 100 + 3 * slot + c }.
		// Only called for samples that are actually ink, and only when some slot has
		// a colour at all, so the loop stays cheap. Stride = AddDecals' own
		// TEXEL_COUNT_PER_DECAL (a local there, so passed in).
		bool ED_FindSlotHsv( int Slot, int FromDataTexel, int ToDataTexel, int Stride, out float3 Hsv )
		{
			bool Found = false;
			Hsv = float3( 0.0f, 1.0f, 0.7f );
			int Base = 100 + Slot * 3;
			for ( int j = FromDataTexel; j <= ToDataTexel; j += Stride )
			{
				if ( int( PdxReadBuffer( DecalDataBuffer, j + 12 ) ) == 61 )
				{
					int Sig = int( PdxReadBuffer( DecalDataBuffer, j + 13 ) );
					float W = Unpack16BitUnorm( PdxReadBuffer( DecalDataBuffer, j + 7 ) );
					if ( Sig == Base ) { Found = true; Hsv.x = ED_PickerValue( W ); }
					if ( Sig == Base + 1 ) { Hsv.y = ED_PickerValue( W ); }
					if ( Sig == Base + 2 ) { Hsv.z = ED_PickerValue( W ); }
				}
			}
			return Found;
		}
		// END MOD

		void AddDecals( inout float3 Diffuse, inout float3 Normals, inout float4 Properties, float2 UV, uint InstanceIndex, int From, int To )
		{
			// Body part index is scripted on the mesh asset and should match ECharacterPortraitPart
			uint BodyPartIndex = GetBodyPartIndex( InstanceIndex );

			const int TEXEL_COUNT_PER_DECAL = 15;
			int FromDataTexel = From * TEXEL_COUNT_PER_DECAL;
			int ToDataTexel = To * TEXEL_COUNT_PER_DECAL;

			static const uint MAX_VALUE = 65535;

			// MOD(elf-destiny) find the ink-colour markers, on any body part
			// The All-tattoos colour (71/73/79), and whether ANY slot has its own colour;
			// which one is looked up on demand in ED_FindSlotHsv, only for ink samples.
			// No markers at all (every AI character): the tint below is skipped outright.
			bool EDHasInk = false;
			bool EDAnySlot = false;
			float3 EDInkColor = float3( 0.0f, 0.0f, 0.0f );
			float EDH = 0.0f;
			float EDS = 1.0f;
			float EDV = 0.7f;
			for ( int j = FromDataTexel; j <= ToDataTexel; j += TEXEL_COUNT_PER_DECAL )
			{
				if ( int( PdxReadBuffer( DecalDataBuffer, j + 12 ) ) == 61 )
				{
					int EDSig = int( PdxReadBuffer( DecalDataBuffer, j + 13 ) );
					float EDW = Unpack16BitUnorm( PdxReadBuffer( DecalDataBuffer, j + 7 ) );
					if ( EDSig == 71 ) { EDHasInk = true; EDH = ED_PickerValue( EDW ); }
					if ( EDSig == 73 ) { EDS = ED_PickerValue( EDW ); }
					if ( EDSig == 79 ) { EDV = ED_PickerValue( EDW ); }
					if ( EDSig >= 100 && EDSig < 145 ) { EDAnySlot = true; }
				}
			}
			if ( EDHasInk )
			{
				// 0.8: keep the brightest picks in the range of a painted albedo
				EDInkColor = 0.8f * ED_Hsv( EDH, EDS, EDV );
			}
			// END MOD

			// Sorted after priority
			for ( int i = FromDataTexel; i <= ToDataTexel; i += TEXEL_COUNT_PER_DECAL )
			{
				DecalData Data = GetDecalData( i );

				// MOD(elf-destiny) the ink markers themselves draw nothing
				if ( int( Data._UVTiling.x ) == 61 && ( int( Data._UVTiling.y ) == 71 || int( Data._UVTiling.y ) == 73 || int( Data._UVTiling.y ) == 79 || ( int( Data._UVTiling.y ) >= 100 && int( Data._UVTiling.y ) < 145 ) ) )
				{
					continue;
				}
				// END MOD

				// Max index => unused
				if ( Data._BodyPartIndex == BodyPartIndex )
				{
					float Weight = Data._Weight;

					// Assumes that the cropped area size corresponds to the atlas factor
					float AtlasFactor = 1.0f / Data._AtlasSize;
					if ( ( ( UV.x >= Data._UVOffset.x ) && ( UV.x < ( Data._UVOffset.x + AtlasFactor ) ) ) &&
						 ( ( UV.y >= Data._UVOffset.y ) && ( UV.y < ( Data._UVOffset.y + AtlasFactor ) ) ) )
					{
						float2 DecalUV;
						float TilingMaskSample = 1;
						//UVTiling is incompatible with Decal Atlases, so we only use one of them. 
						//If a tiling value is provided, the tiling feature will be used.
						if ( Data._UVTiling.x == 1 && Data._UVTiling.y == 1 )
						{
							DecalUV = ( UV - Data._UVOffset ) + ( Data._AtlasPos * AtlasFactor );
						} 
						else
						{
							DecalUV = UV * Data._UVTiling;
							float2 TilingMaskUV = ( UV - Data._UVOffset ) + ( Data._AtlasPos * AtlasFactor );
							TilingMaskSample = PdxTex2D( DecalPropertiesArray, float3( TilingMaskUV, Data._PropertiesIndex ) ).r;
						}

						if ( Data._DiffuseIndex < MAX_VALUE )
						{
							float4 DiffuseSample = PdxTex2D( DecalDiffuseArray, float3( DecalUV, Data._DiffuseIndex ) );
							// MOD(elf-destiny) recolour Elf Destiny tattoo ink, per tattoo slot
							// This runs even when NO colour is picked, and must: the signature is only
							// black read as sRGB. The decal array samples as UNORM, so a slot signature
							// like (0,16,0)/255 lands in LINEAR space and displays as a visible green --
							// which is what the centre and lower chest showed in game (2026-09-12) while
							// this block was gated behind a colour being picked. Unpicked ink is forced to
							// true black below; only the per-slot marker LOOKUP is gated, on EDAnySlot.
							if ( DiffuseSample.a * TilingMaskSample > 0.004f )
							{
								int EDSlot = ED_InkSlot( DiffuseSample.rgb );
								if ( EDSlot >= 0 )
								{
									float3 EDHsv;
									if ( EDAnySlot && ED_FindSlotHsv( EDSlot, FromDataTexel, ToDataTexel, TEXEL_COUNT_PER_DECAL, EDHsv ) )
									{
										DiffuseSample.rgb = 0.8f * ED_Hsv( EDHsv.x, EDHsv.y, EDHsv.z );
									}
									else if ( EDHasInk )
									{
										DiffuseSample.rgb = EDInkColor;
									}
									else
									{
										DiffuseSample.rgb = float3( 0.0f, 0.0f, 0.0f );
									}
								}
							}
							// END MOD
							Weight = DiffuseSample.a * Weight * TilingMaskSample;
							Diffuse = BlendDecal( Data._DiffuseBlendMode, float4( Diffuse, 0.0f ), DiffuseSample, Weight ).rgb;
						}

						if ( Data._NormalIndex < MAX_VALUE )
						{
							float3 NormalSample = UnpackDecalNormal( PdxTex2D( DecalNormalArray, float3( DecalUV, Data._NormalIndex ) ), Weight );
							Normals = BlendDecal( Data._NormalBlendMode, float4( Normals, 0.0f ), float4( NormalSample, 0.0f ), Weight ).xyz;
						}

						if ( Data._PropertiesIndex < MAX_VALUE )
						{
							float4 PropertiesSample = PdxTex2D( DecalPropertiesArray, float3( DecalUV, Data._PropertiesIndex ) );
							Properties = BlendDecal( Data._PropertiesBlendMode, Properties, PropertiesSample, Weight );
						}
					}
				}
			}

			Normals = normalize( Normals );
		}
	]]
}
