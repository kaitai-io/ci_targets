// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsDefEnumImported : KaitaiStruct
    {
        public ParamsDefEnumImported(Enum0.Animal p_pet1Param, EnumDeep.Container1.Container2.Animal p_pet2Param, KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsDefEnumImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _pet1Param = p_pet1Param;
            _pet2Param = p_pet2Param;
            _read();
        }
        private void _read()
        {
        }
        public Enum0.Animal Pet1Param { get { return _pet1Param; } }
        public EnumDeep.Container1.Container2.Animal Pet2Param { get { return _pet2Param; } }
        public ParamsDefEnumImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Enum0.Animal _pet1Param;
        private EnumDeep.Container1.Container2.Animal _pet2Param;
        private ParamsDefEnumImported m_root;
        private KaitaiStruct m_parent;
    }
}
