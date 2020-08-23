// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsCallExtraParens : KaitaiStruct
    {
        public static ParamsCallExtraParens FromFile(string fileName)
        {
            return new ParamsCallExtraParens(new KaitaiStream(fileName));
        }

        public ParamsCallExtraParens(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsCallExtraParens p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _buf1 = new MyStr1(5, m_io, this, m_root);
        }
        public partial class MyStr1 : KaitaiStruct
        {
            public MyStr1(uint p_len, KaitaiStream p__io, ParamsCallExtraParens p__parent = null, ParamsCallExtraParens p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _len = p_len;
                _read();
            }
            private void _read()
            {
                _body = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(Len));
            }
            private string _body;
            private uint _len;
            private ParamsCallExtraParens m_root;
            private ParamsCallExtraParens m_parent;
            public string Body { get { return _body; } }
            public uint Len { get { return _len; } }
            public ParamsCallExtraParens M_Root { get { return m_root; } }
            public ParamsCallExtraParens M_Parent { get { return m_parent; } }
        }
        private MyStr1 _buf1;
        private ParamsCallExtraParens m_root;
        private KaitaiStruct m_parent;
        public MyStr1 Buf1 { get { return _buf1; } }
        public ParamsCallExtraParens M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
