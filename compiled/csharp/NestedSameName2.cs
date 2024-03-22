// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedSameName2 : KaitaiStruct
    {
        public static NestedSameName2 FromFile(string fileName)
        {
            return new NestedSameName2(new KaitaiStream(fileName));
        }

        public NestedSameName2(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedSameName2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _version = m_io.ReadU4le();
            _mainData = new Main(m_io, this, m_root);
            _dummy = new DummyObj(m_io, this, m_root);
        }
        public partial class DummyObj : KaitaiStruct
        {
            public static DummyObj FromFile(string fileName)
            {
                return new DummyObj(new KaitaiStream(fileName));
            }

            public DummyObj(KaitaiStream p__io, NestedSameName2 p__parent = null, NestedSameName2 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _dummySize = m_io.ReadS4le();
                _foo = new FooObj(m_io, this, m_root);
            }
            public partial class FooObj : KaitaiStruct
            {
                public static FooObj FromFile(string fileName)
                {
                    return new FooObj(new KaitaiStream(fileName));
                }

                public FooObj(KaitaiStream p__io, NestedSameName2.DummyObj p__parent = null, NestedSameName2 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _data2 = m_io.ReadBytes(M_Parent.DummySize * 2);
                }
                private byte[] _data2;
                private NestedSameName2 m_root;
                private NestedSameName2.DummyObj m_parent;
                public byte[] Data2 { get { return _data2; } }
                public NestedSameName2 M_Root { get { return m_root; } }
                public NestedSameName2.DummyObj M_Parent { get { return m_parent; } }
            }
            private int _dummySize;
            private FooObj _foo;
            private NestedSameName2 m_root;
            private NestedSameName2 m_parent;
            public int DummySize { get { return _dummySize; } }
            public FooObj Foo { get { return _foo; } }
            public NestedSameName2 M_Root { get { return m_root; } }
            public NestedSameName2 M_Parent { get { return m_parent; } }
        }
        public partial class Main : KaitaiStruct
        {
            public static Main FromFile(string fileName)
            {
                return new Main(new KaitaiStream(fileName));
            }

            public Main(KaitaiStream p__io, NestedSameName2 p__parent = null, NestedSameName2 p__root = null) : base(p__io)
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

                public FooObj(KaitaiStream p__io, NestedSameName2.Main p__parent = null, NestedSameName2 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _data1 = m_io.ReadBytes(M_Parent.MainSize * 2);
                }
                private byte[] _data1;
                private NestedSameName2 m_root;
                private NestedSameName2.Main m_parent;
                public byte[] Data1 { get { return _data1; } }
                public NestedSameName2 M_Root { get { return m_root; } }
                public NestedSameName2.Main M_Parent { get { return m_parent; } }
            }
            private int _mainSize;
            private FooObj _foo;
            private NestedSameName2 m_root;
            private NestedSameName2 m_parent;
            public int MainSize { get { return _mainSize; } }
            public FooObj Foo { get { return _foo; } }
            public NestedSameName2 M_Root { get { return m_root; } }
            public NestedSameName2 M_Parent { get { return m_parent; } }
        }
        private uint _version;
        private Main _mainData;
        private DummyObj _dummy;
        private NestedSameName2 m_root;
        private KaitaiStruct m_parent;
        public uint Version { get { return _version; } }
        public Main MainData { get { return _mainData; } }
        public DummyObj Dummy { get { return _dummy; } }
        public NestedSameName2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
