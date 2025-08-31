// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEosPadTerm : KaitaiStruct
    {
        public static StrEosPadTerm FromFile(string fileName)
        {
            return new StrEosPadTerm(new KaitaiStream(fileName));
        }

        public StrEosPadTerm(KaitaiStream p__io, KaitaiStruct p__parent = null, StrEosPadTerm p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_strPad = m_io.ReadBytes(20);
            var io___raw_strPad = new KaitaiStream(__raw_strPad);
            _strPad = new StrPadType(io___raw_strPad, this, m_root);
            __raw_strTerm = m_io.ReadBytes(20);
            var io___raw_strTerm = new KaitaiStream(__raw_strTerm);
            _strTerm = new StrTermType(io___raw_strTerm, this, m_root);
            __raw_strTermAndPad = m_io.ReadBytes(20);
            var io___raw_strTermAndPad = new KaitaiStream(__raw_strTermAndPad);
            _strTermAndPad = new StrTermAndPadType(io___raw_strTermAndPad, this, m_root);
            __raw_strTermInclude = m_io.ReadBytes(20);
            var io___raw_strTermInclude = new KaitaiStream(__raw_strTermInclude);
            _strTermInclude = new StrTermIncludeType(io___raw_strTermInclude, this, m_root);
        }
        public partial class StrPadType : KaitaiStruct
        {
            public static StrPadType FromFile(string fileName)
            {
                return new StrPadType(new KaitaiStream(fileName));
            }

            public StrPadType(KaitaiStream p__io, StrEosPadTerm p__parent = null, StrEosPadTerm p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytesFull(), 64));
            }
            private string _value;
            private StrEosPadTerm m_root;
            private StrEosPadTerm m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTerm M_Root { get { return m_root; } }
            public StrEosPadTerm M_Parent { get { return m_parent; } }
        }
        public partial class StrTermAndPadType : KaitaiStruct
        {
            public static StrTermAndPadType FromFile(string fileName)
            {
                return new StrTermAndPadType(new KaitaiStream(fileName));
            }

            public StrTermAndPadType(KaitaiStream p__io, StrEosPadTerm p__parent = null, StrEosPadTerm p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytesFull(), 43), 64, false));
            }
            private string _value;
            private StrEosPadTerm m_root;
            private StrEosPadTerm m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTerm M_Root { get { return m_root; } }
            public StrEosPadTerm M_Parent { get { return m_parent; } }
        }
        public partial class StrTermIncludeType : KaitaiStruct
        {
            public static StrTermIncludeType FromFile(string fileName)
            {
                return new StrTermIncludeType(new KaitaiStream(fileName));
            }

            public StrTermIncludeType(KaitaiStream p__io, StrEosPadTerm p__parent = null, StrEosPadTerm p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(m_io.ReadBytesFull(), 64, true));
            }
            private string _value;
            private StrEosPadTerm m_root;
            private StrEosPadTerm m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTerm M_Root { get { return m_root; } }
            public StrEosPadTerm M_Parent { get { return m_parent; } }
        }
        public partial class StrTermType : KaitaiStruct
        {
            public static StrTermType FromFile(string fileName)
            {
                return new StrTermType(new KaitaiStream(fileName));
            }

            public StrTermType(KaitaiStream p__io, StrEosPadTerm p__parent = null, StrEosPadTerm p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(m_io.ReadBytesFull(), 64, false));
            }
            private string _value;
            private StrEosPadTerm m_root;
            private StrEosPadTerm m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTerm M_Root { get { return m_root; } }
            public StrEosPadTerm M_Parent { get { return m_parent; } }
        }
        private StrPadType _strPad;
        private StrTermType _strTerm;
        private StrTermAndPadType _strTermAndPad;
        private StrTermIncludeType _strTermInclude;
        private StrEosPadTerm m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_strPad;
        private byte[] __raw_strTerm;
        private byte[] __raw_strTermAndPad;
        private byte[] __raw_strTermInclude;
        public StrPadType StrPad { get { return _strPad; } }
        public StrTermType StrTerm { get { return _strTerm; } }
        public StrTermAndPadType StrTermAndPad { get { return _strTermAndPad; } }
        public StrTermIncludeType StrTermInclude { get { return _strTermInclude; } }
        public StrEosPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawStrPad { get { return __raw_strPad; } }
        public byte[] M_RawStrTerm { get { return __raw_strTerm; } }
        public byte[] M_RawStrTermAndPad { get { return __raw_strTermAndPad; } }
        public byte[] M_RawStrTermInclude { get { return __raw_strTermInclude; } }
    }
}
