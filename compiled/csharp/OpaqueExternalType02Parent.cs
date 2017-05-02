// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class OpaqueExternalType02Parent : KaitaiStruct
    {
        public static OpaqueExternalType02Parent FromFile(string fileName)
        {
            return new OpaqueExternalType02Parent(new KaitaiStream(fileName));
        }

        public OpaqueExternalType02Parent(KaitaiStream io, KaitaiStruct parent = null, OpaqueExternalType02Parent root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _parent = new ParentObj(m_io, this, m_root);
        }
        public partial class ParentObj : KaitaiStruct
        {
            public static ParentObj FromFile(string fileName)
            {
                return new ParentObj(new KaitaiStream(fileName));
            }

            public ParentObj(KaitaiStream io, OpaqueExternalType02Parent parent = null, OpaqueExternalType02Parent root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _child = new OpaqueExternalType02Child(m_io);
            }
            private OpaqueExternalType02Child _child;
            private OpaqueExternalType02Parent m_root;
            private OpaqueExternalType02Parent m_parent;
            public OpaqueExternalType02Child Child { get { return _child; } }
            public OpaqueExternalType02Parent M_Root { get { return m_root; } }
            public OpaqueExternalType02Parent M_Parent { get { return m_parent; } }
        }
        private ParentObj _parent;
        private OpaqueExternalType02Parent m_root;
        private KaitaiStruct m_parent;
        public ParentObj Parent { get { return _parent; } }
        public OpaqueExternalType02Parent M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
