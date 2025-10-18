// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TermStruct : KaitaiStruct
    {
        public static TermStruct FromFile(string fileName)
        {
            return new TermStruct(new KaitaiStream(fileName));
        }

        public TermStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, TermStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_s1 = m_io.ReadBytesTerm(124, false, true, true);
            var io___raw_s1 = new KaitaiStream(__raw_s1);
            _s1 = new BytesWrapper(io___raw_s1, this, m_root);
            __raw_s2 = m_io.ReadBytesTerm(124, false, false, true);
            var io___raw_s2 = new KaitaiStream(__raw_s2);
            _s2 = new BytesWrapper(io___raw_s2, this, m_root);
            __raw_s3 = m_io.ReadBytesTerm(64, true, true, true);
            var io___raw_s3 = new KaitaiStream(__raw_s3);
            _s3 = new BytesWrapper(io___raw_s3, this, m_root);
        }
        public partial class BytesWrapper : KaitaiStruct
        {
            public static BytesWrapper FromFile(string fileName)
            {
                return new BytesWrapper(new KaitaiStream(fileName));
            }

            public BytesWrapper(KaitaiStream p__io, TermStruct p__parent = null, TermStruct p__root = null) : base(p__io)
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
            public TermStruct M_Root { get { return m_root; } }
            public TermStruct M_Parent { get { return m_parent; } }
            private byte[] _value;
            private TermStruct m_root;
            private TermStruct m_parent;
        }
        public BytesWrapper S1 { get { return _s1; } }
        public BytesWrapper S2 { get { return _s2; } }
        public BytesWrapper S3 { get { return _s3; } }
        public TermStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawS1 { get { return __raw_s1; } }
        public byte[] M_RawS2 { get { return __raw_s2; } }
        public byte[] M_RawS3 { get { return __raw_s3; } }
        private BytesWrapper _s1;
        private BytesWrapper _s2;
        private BytesWrapper _s3;
        private TermStruct m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_s1;
        private byte[] __raw_s2;
        private byte[] __raw_s3;
    }
}
