// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavParentFalse2 : KaitaiStruct
    {
        public static NavParentFalse2 FromFile(string fileName)
        {
            return new NavParentFalse2(new KaitaiStream(fileName));
        }

        public NavParentFalse2(KaitaiStream io, KaitaiStruct parent = null, NavParentFalse2 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _parentless = new Child(m_io, null, m_root);
            }
        public partial class Child : KaitaiStruct
        {
            public static Child FromFile(string fileName)
            {
                return new Child(new KaitaiStream(fileName));
            }

            public Child(KaitaiStream io, KaitaiStruct parent = null, NavParentFalse2 root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _foo = m_io.ReadU1();
                }
            private byte _foo;
            private NavParentFalse2 m_root;
            private KaitaiStruct m_parent;
            public byte Foo { get { return _foo; } }
            public NavParentFalse2 M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private Child _parentless;
        private NavParentFalse2 m_root;
        private KaitaiStruct m_parent;
        public Child Parentless { get { return _parentless; } }
        public NavParentFalse2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
