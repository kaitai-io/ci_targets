// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedSameName : KaitaiStruct
    {
        public static NestedSameName FromFile(string fileName)
        {
            return new NestedSameName(new KaitaiStream(fileName));
        }

        public NestedSameName(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedSameName p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _mainData = new Main(m_io, this, m_root);
            _dummy = new DummyObj(m_io, this, m_root);
        }
        public partial class DummyObj : KaitaiStruct
        {
            public static DummyObj FromFile(string fileName)
            {
                return new DummyObj(new KaitaiStream(fileName));
            }

            public DummyObj(KaitaiStream p__io, NestedSameName p__parent = null, NestedSameName p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            public partial class Foo : KaitaiStruct
            {
                public static Foo FromFile(string fileName)
                {
                    return new Foo(new KaitaiStream(fileName));
                }

                public Foo(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedSameName p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                }
                private NestedSameName m_root;
                private KaitaiStruct m_parent;
                public NestedSameName M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
            }
            private NestedSameName m_root;
            private NestedSameName m_parent;
            public NestedSameName M_Root { get { return m_root; } }
            public NestedSameName M_Parent { get { return m_parent; } }
        }
        public partial class Main : KaitaiStruct
        {
            public static Main FromFile(string fileName)
            {
                return new Main(new KaitaiStream(fileName));
            }

            public Main(KaitaiStream p__io, NestedSameName p__parent = null, NestedSameName p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _mainSize = m_io.ReadS4le();
                _foo = new FooObj(m_io, this, m_root);
            }
            public partial class FooObj : KaitaiStruct
            {
                public static FooObj FromFile(string fileName)
                {
                    return new FooObj(new KaitaiStream(fileName));
                }

                public FooObj(KaitaiStream p__io, NestedSameName.Main p__parent = null, NestedSameName p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _data = m_io.ReadBytes(M_Parent.MainSize * 2);
                }
                private byte[] _data;
                private NestedSameName m_root;
                private NestedSameName.Main m_parent;
                public byte[] Data { get { return _data; } }
                public NestedSameName M_Root { get { return m_root; } }
                public NestedSameName.Main M_Parent { get { return m_parent; } }
            }
            private int _mainSize;
            private FooObj _foo;
            private NestedSameName m_root;
            private NestedSameName m_parent;
            public int MainSize { get { return _mainSize; } }
            public FooObj Foo { get { return _foo; } }
            public NestedSameName M_Root { get { return m_root; } }
            public NestedSameName M_Parent { get { return m_parent; } }
        }
        private Main _mainData;
        private DummyObj _dummy;
        private NestedSameName m_root;
        private KaitaiStruct m_parent;
        public Main MainData { get { return _mainData; } }
        public DummyObj Dummy { get { return _dummy; } }
        public NestedSameName M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
