function data()
    return {
        name = _('Old era tiles'),
        --detailColorTexture = 'terrain/hexagon_tiles_albedo.dds',
        --detailColorTexture = 'terrain/streetstation_perron_base_mid_albedo_bc1.dds', -- format no good
        --detailColorTexture = 'terrain/streetstation_perron_base_mid_albedo_bc4.dds', -- format no good
        detailColorTexture = 'terrain/streetstation_perron_base_old_albedo_bc1a.dds', -- yes
        --detailMetalGlossAoHTexture = 'terrain/hexagon_tiles_metal_gloss_ao_h.dds', -- dxt5
        detailMetalGlossAoHTexture = 'terrain/streetstation_perron_base_old_metal_gloss_ao_bc3.dds',
        --detailNormalTexture = 'terrain/hexagon_tiles_nrml.dds', -- bc5u
        detailNormalTexture = 'terrain/streetstation_perron_base_old_normal_bc5.dds',
        overlayTexture = 'terrain/overlay_0.dds', -- dirt
        --overlayTexture = 'terrain/overlay_5.dds',
        --overlayTexture = 'terrain/overlay_14.dds',
        detailSize = 1 / 24, --.025, --1 / 15, -- the smaller the detail size, the larger the tiles will look. 1 / 15 is too small, 1/32 is too large
        overlaySize = 0.08, --0.05, -- the larger, the thicker the dirt
        overlayStrength = 0.5, -- the larger, the stronger the overlay
        --hOffset = 0.3,
        order = -65,
        priority = 1000000
    }
end
