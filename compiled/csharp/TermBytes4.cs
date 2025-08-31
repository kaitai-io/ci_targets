// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TermBytes4 : KaitaiStruct
    {
        public static TermBytes4 FromFile(string fileName)
        {
            return new TermBytes4(new KaitaiStream(fileName));
        }

        public TermBytes4(KaitaiStream p__io, KaitaiStruct p__parent = null, TermBytes4 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_s1 = m_io.ReadBytes(3);
            var io___raw_s1 = new KaitaiStream(__raw_s1);
            _s1 = new S1Type(io___raw_s1, this, m_root);
            _skipTerm1 = m_io.ReadU1();
            __raw_s2 = m_io.ReadBytes(3);
            var io___raw_s2 = new KaitaiStream(__raw_s2);
            _s2 = new S2Type(io___raw_s2, this, m_root);
            _skipTerm2 = m_io.ReadU1();
            __raw_s3 = m_io.ReadBytes(3);
            var io___raw_s3 = new KaitaiStream(__raw_s3);
            _s3 = new S3Type(io___raw_s3, this, m_root);
        }
        public partial class S1Type : KaitaiStruct
        {
            public static S1Type FromFile(string fileName)
            {
                return new S1Type(new KaitaiStream(fileName));
            }

            public S1Type(KaitaiStream p__io, TermBytes4 p__parent = null, TermBytes4 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesTerm(124, false, true, false);
            }
            private byte[] _value;
            private TermBytes4 m_root;
            private TermBytes4 m_parent;
            public byte[] Value { get { return _value; } }
            public TermBytes4 M_Root { get { return m_root; } }
            public TermBytes4 M_Parent { get { return m_parent; } }
        }
        public partial class S2Type : KaitaiStruct
        {
            public static S2Type FromFile(string fileName)
            {
                return new S2Type(new KaitaiStream(fileName));
            }

            public S2Type(KaitaiStream p__io, TermBytes4 p__parent = null, TermBytes4 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesTerm(124, false, false, false);
            }
            private byte[] _value;
            private TermBytes4 m_root;
            private TermBytes4 m_parent;
            public byte[] Value { get { return _value; } }
            public TermBytes4 M_Root { get { return m_root; } }
            public TermBytes4 M_Parent { get { return m_parent; } }
        }
        public partial class S3Type : KaitaiStruct
        {
            public static S3Type FromFile(string fileName)
            {
                return new S3Type(new KaitaiStream(fileName));
            }

            public S3Type(KaitaiStream p__io, TermBytes4 p__parent = null, TermBytes4 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesTerm(64, true, true, false);
            }
            private byte[] _value;
            private TermBytes4 m_root;
            private TermBytes4 m_parent;
            public byte[] Value { get { return _value; } }
            public TermBytes4 M_Root { get { return m_root; } }
            public TermBytes4 M_Parent { get { return m_parent; } }
        }
        private S1Type _s1;
        private byte _skipTerm1;
        private S2Type _s2;
        private byte _skipTerm2;
        private S3Type _s3;
        private TermBytes4 m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_s1;
        private byte[] __raw_s2;
        private byte[] __raw_s3;
        public S1Type S1 { get { return _s1; } }
        public byte SkipTerm1 { get { return _skipTerm1; } }
        public S2Type S2 { get { return _s2; } }
        public byte SkipTerm2 { get { return _skipTerm2; } }
        public S3Type S3 { get { return _s3; } }
        public TermBytes4 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawS1 { get { return __raw_s1; } }
        public byte[] M_RawS2 { get { return __raw_s2; } }
        public byte[] M_RawS3 { get { return __raw_s3; } }
    }
}
