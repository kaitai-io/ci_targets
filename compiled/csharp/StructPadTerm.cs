// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StructPadTerm : KaitaiStruct
    {
        public static StructPadTerm FromFile(string fileName)
        {
            return new StructPadTerm(new KaitaiStream(fileName));
        }

        public StructPadTerm(KaitaiStream p__io, KaitaiStruct p__parent = null, StructPadTerm p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_strPad = KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64);
            var io___raw_strPad = new KaitaiStream(__raw_strPad);
            _strPad = new BytesWrapper(io___raw_strPad, this, m_root);
            __raw_strTerm = KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, false);
            var io___raw_strTerm = new KaitaiStream(__raw_strTerm);
            _strTerm = new BytesWrapper(io___raw_strTerm, this, m_root);
            __raw_strTermAndPad = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, false);
            var io___raw_strTermAndPad = new KaitaiStream(__raw_strTermAndPad);
            _strTermAndPad = new BytesWrapper(io___raw_strTermAndPad, this, m_root);
            __raw_strTermInclude = KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, true);
            var io___raw_strTermInclude = new KaitaiStream(__raw_strTermInclude);
            _strTermInclude = new BytesWrapper(io___raw_strTermInclude, this, m_root);
        }
        public partial class BytesWrapper : KaitaiStruct
        {
            public static BytesWrapper FromFile(string fileName)
            {
                return new BytesWrapper(new KaitaiStream(fileName));
            }

            public BytesWrapper(KaitaiStream p__io, StructPadTerm p__parent = null, StructPadTerm p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesFull();
            }
            public byte[] Value { get { return _value; } }
            public StructPadTerm M_Root { get { return m_root; } }
            public StructPadTerm M_Parent { get { return m_parent; } }
            private byte[] _value;
            private StructPadTerm m_root;
            private StructPadTerm m_parent;
        }
        public BytesWrapper StrPad { get { return _strPad; } }
        public BytesWrapper StrTerm { get { return _strTerm; } }
        public BytesWrapper StrTermAndPad { get { return _strTermAndPad; } }
        public BytesWrapper StrTermInclude { get { return _strTermInclude; } }
        public StructPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawStrPad { get { return __raw_strPad; } }
        public byte[] M_RawStrTerm { get { return __raw_strTerm; } }
        public byte[] M_RawStrTermAndPad { get { return __raw_strTermAndPad; } }
        public byte[] M_RawStrTermInclude { get { return __raw_strTermInclude; } }
        private BytesWrapper _strPad;
        private BytesWrapper _strTerm;
        private BytesWrapper _strTermAndPad;
        private BytesWrapper _strTermInclude;
        private StructPadTerm m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_strPad;
        private byte[] __raw_strTerm;
        private byte[] __raw_strTermAndPad;
        private byte[] __raw_strTermInclude;
    }
}
