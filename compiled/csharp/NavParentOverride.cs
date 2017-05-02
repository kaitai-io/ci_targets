// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavParentOverride : KaitaiStruct
    {
        public static NavParentOverride FromFile(string fileName)
        {
            return new NavParentOverride(new KaitaiStream(fileName));
        }

        public NavParentOverride(KaitaiStream io, KaitaiStruct parent = null, NavParentOverride root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _childSize = m_io.ReadU1();
            _child1 = new Child(m_io, this, m_root);
            _mediator2 = new Mediator(m_io, this, m_root);
        }
        public partial class Mediator : KaitaiStruct
        {
            public static Mediator FromFile(string fileName)
            {
                return new Mediator(new KaitaiStream(fileName));
            }

            public Mediator(KaitaiStream io, NavParentOverride parent = null, NavParentOverride root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _child2 = new Child(m_io, M_Parent, m_root);
            }
            private Child _child2;
            private NavParentOverride m_root;
            private NavParentOverride m_parent;
            public Child Child2 { get { return _child2; } }
            public NavParentOverride M_Root { get { return m_root; } }
            public NavParentOverride M_Parent { get { return m_parent; } }
        }
        public partial class Child : KaitaiStruct
        {
            public static Child FromFile(string fileName)
            {
                return new Child(new KaitaiStream(fileName));
            }

            public Child(KaitaiStream io, NavParentOverride parent = null, NavParentOverride root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _data = m_io.ReadBytes(M_Parent.ChildSize);
            }
            private byte[] _data;
            private NavParentOverride m_root;
            private NavParentOverride m_parent;
            public byte[] Data { get { return _data; } }
            public NavParentOverride M_Root { get { return m_root; } }
            public NavParentOverride M_Parent { get { return m_parent; } }
        }
        private byte _childSize;
        private Child _child1;
        private Mediator _mediator2;
        private NavParentOverride m_root;
        private KaitaiStruct m_parent;
        public byte ChildSize { get { return _childSize; } }
        public Child Child1 { get { return _child1; } }
        public Mediator Mediator2 { get { return _mediator2; } }
        public NavParentOverride M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
