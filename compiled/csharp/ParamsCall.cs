// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsCall : KaitaiStruct
    {
        public static ParamsCall FromFile(string fileName)
        {
            return new ParamsCall(new KaitaiStream(fileName));
        }

        public ParamsCall(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsCall p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _buf1 = new MyStr1(5, m_io, this, m_root);
            _buf2 = new MyStr2((2 + 3), true, m_io, this, m_root);
        }
        public partial class MyStr1 : KaitaiStruct
        {
            public MyStr1(uint p_len, KaitaiStream p__io, ParamsCall p__parent = null, ParamsCall p__root = null) : base(p__io)
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
            private ParamsCall m_root;
            private ParamsCall m_parent;
            public string Body { get { return _body; } }
            public uint Len { get { return _len; } }
            public ParamsCall M_Root { get { return m_root; } }
            public ParamsCall M_Parent { get { return m_parent; } }
        }
        public partial class MyStr2 : KaitaiStruct
        {
            public MyStr2(uint p_len, bool p_hasTrailer, KaitaiStream p__io, ParamsCall p__parent = null, ParamsCall p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _len = p_len;
                _hasTrailer = p_hasTrailer;
                _read();
            }
            private void _read()
            {
                _body = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(Len));
                if (HasTrailer) {
                    _trailer = m_io.ReadU1();
                }
            }
            private string _body;
            private byte? _trailer;
            private uint _len;
            private bool _hasTrailer;
            private ParamsCall m_root;
            private ParamsCall m_parent;
            public string Body { get { return _body; } }
            public byte? Trailer { get { return _trailer; } }
            public uint Len { get { return _len; } }
            public bool HasTrailer { get { return _hasTrailer; } }
            public ParamsCall M_Root { get { return m_root; } }
            public ParamsCall M_Parent { get { return m_parent; } }
        }
        private MyStr1 _buf1;
        private MyStr2 _buf2;
        private ParamsCall m_root;
        private KaitaiStruct m_parent;
        public MyStr1 Buf1 { get { return _buf1; } }
        public MyStr2 Buf2 { get { return _buf2; } }
        public ParamsCall M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
