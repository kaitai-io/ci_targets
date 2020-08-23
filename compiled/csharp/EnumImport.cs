// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumImport : KaitaiStruct
    {
        public static EnumImport FromFile(string fileName)
        {
            return new EnumImport(new KaitaiStream(fileName));
        }

        public EnumImport(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumImport p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Enum0.Animal) m_io.ReadU4le());
            _pet2 = ((EnumDeep.Container1.Container2.Animal) m_io.ReadU4le());
        }
        private Enum0.Animal _pet1;
        private EnumDeep.Container1.Container2.Animal _pet2;
        private EnumImport m_root;
        private KaitaiStruct m_parent;
        public Enum0.Animal Pet1 { get { return _pet1; } }
        public EnumDeep.Container1.Container2.Animal Pet2 { get { return _pet2; } }
        public EnumImport M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
