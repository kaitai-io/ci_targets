// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedTypesImport : KaitaiStruct
    {
        public static NestedTypesImport FromFile(string fileName)
        {
            return new NestedTypesImport(new KaitaiStream(fileName));
        }

        public NestedTypesImport(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypesImport p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _aCc = new NestedTypes3.SubtypeA.SubtypeCc(m_io);
            _aCD = new NestedTypes3.SubtypeA.SubtypeC.SubtypeD(m_io);
            _b = new NestedTypes3.SubtypeB(m_io);
        }
        private NestedTypes3.SubtypeA.SubtypeCc _aCc;
        private NestedTypes3.SubtypeA.SubtypeC.SubtypeD _aCD;
        private NestedTypes3.SubtypeB _b;
        private NestedTypesImport m_root;
        private KaitaiStruct m_parent;
        public NestedTypes3.SubtypeA.SubtypeCc ACc { get { return _aCc; } }
        public NestedTypes3.SubtypeA.SubtypeC.SubtypeD ACD { get { return _aCD; } }
        public NestedTypes3.SubtypeB B { get { return _b; } }
        public NestedTypesImport M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
