function data()
    return {
        name = _('New era tiles'),
        --detailColorTexture = 'terrain/streetstation_perron_base_mid_albedo.dds', -- too small
        --detailColorTexture = 'terrain/hexagon_tiles_albedo.dds',
        --detailColorTexture = 'terrain/streetstation_perron_base_mid_albedo_bc1.dds', -- format no good
        --detailColorTexture = 'terrain/streetstation_perron_base_mid_albedo_bc4.dds', -- format no good
        detailColorTexture = 'terrain/streetstation_perron_base_new_albedo_bc1a.dds', -- yes
        --detailMetalGlossAoHTexture = 'terrain/hexagon_tiles_metal_gloss_ao_h.dds', -- dxt5
        detailMetalGlossAoHTexture = 'terrain/streetstation_perron_base_new_metal_gloss_ao_bc3.dds',
        --detailNormalTexture = 'terrain/hexagon_tiles_nrml.dds', -- bc5u
        detailNormalTexture = 'terrain/streetstation_perron_base_new_normal_bc5.dds',
        overlayTexture = 'terrain/overlay_0.dds', -- dirt
        --overlayTexture = 'terrain/overlay_5.dds',
        --overlayTexture = 'terrain/overlay_14.dds',
        detailSize = 1 / 28, --.025, --1 / 15, -- the smaller the detail size, the larger the tiles will look. 1 / 15 is too small, 1/32 is too large
        overlaySize = 0.08, --0.05, -- the larger, the thicker the dirt
        overlayStrength = 0.25, -- the larger, the stronger the overlay
        --hOffset = 0.3,
        order = -63,
        priority = 1000000
    }
end
