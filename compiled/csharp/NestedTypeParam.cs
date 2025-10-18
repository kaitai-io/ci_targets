// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedTypeParam : KaitaiStruct
    {
        public static NestedTypeParam FromFile(string fileName)
        {
            return new NestedTypeParam(new KaitaiStream(fileName));
        }

        public NestedTypeParam(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypeParam p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _mainSeq = new Nested.MyType(5, m_io, this, m_root);
        }
        public partial class Nested : KaitaiStruct
        {
            public static Nested FromFile(string fileName)
            {
                return new Nested(new KaitaiStream(fileName));
            }

            public Nested(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypeParam p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            public partial class MyType : KaitaiStruct
            {
                public MyType(uint p_myLen, KaitaiStream p__io, NestedTypeParam p__parent = null, NestedTypeParam p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _myLen = p_myLen;
                    _read();
                }
                private void _read()
                {
                    _body = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(MyLen));
                }
                public string Body { get { return _body; } }
                public uint MyLen { get { return _myLen; } }
                public NestedTypeParam M_Root { get { return m_root; } }
                public NestedTypeParam M_Parent { get { return m_parent; } }
                private string _body;
                private uint _myLen;
                private NestedTypeParam m_root;
                private NestedTypeParam m_parent;
            }
            public NestedTypeParam M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
            private NestedTypeParam m_root;
            private KaitaiStruct m_parent;
        }
        public Nested.MyType MainSeq { get { return _mainSeq; } }
        public NestedTypeParam M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Nested.MyType _mainSeq;
        private NestedTypeParam m_root;
        private KaitaiStruct m_parent;
    }
}
