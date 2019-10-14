{% if use_ccache %}
export USE_CCACHE=1
export CCACHE_DIR={{ ccache_dir }}
{{ aosp_base_dir }}/prebuilts/misc/linux-x86/ccache/ccache -M {{ ccache_size }}
{% endif %}

cd {{ aosp_base_dir }}
source {{ aosp_base_dir }}/build/envsetup.sh
