// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class OpaqueExternalType02Parent : KaitaiStruct
    {
        public static OpaqueExternalType02Parent FromFile(string fileName)
        {
            return new OpaqueExternalType02Parent(new KaitaiStream(fileName));
        }

        public OpaqueExternalType02Parent(KaitaiStream p__io, KaitaiStruct p__parent = null, OpaqueExternalType02Parent p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _parent = new ParentObj(m_io, this, m_root);
        }
        public partial class ParentObj : KaitaiStruct
        {
            public static ParentObj FromFile(string fileName)
            {
                return new ParentObj(new KaitaiStream(fileName));
            }

            public ParentObj(KaitaiStream p__io, OpaqueExternalType02Parent p__parent = null, OpaqueExternalType02Parent p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _child = new OpaqueExternalType02Child(m_io);
            }
            public OpaqueExternalType02Child Child { get { return _child; } }
            public OpaqueExternalType02Parent M_Root { get { return m_root; } }
            public OpaqueExternalType02Parent M_Parent { get { return m_parent; } }
            private OpaqueExternalType02Child _child;
            private OpaqueExternalType02Parent m_root;
            private OpaqueExternalType02Parent m_parent;
        }
        public ParentObj Parent { get { return _parent; } }
        public OpaqueExternalType02Parent M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ParentObj _parent;
        private OpaqueExternalType02Parent m_root;
        private KaitaiStruct m_parent;
    }
}
