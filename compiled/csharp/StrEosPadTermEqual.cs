// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEosPadTermEqual : KaitaiStruct
    {
        public static StrEosPadTermEqual FromFile(string fileName)
        {
            return new StrEosPadTermEqual(new KaitaiStream(fileName));
        }

        public StrEosPadTermEqual(KaitaiStream p__io, KaitaiStruct p__parent = null, StrEosPadTermEqual p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_s1 = m_io.ReadBytes(20);
            var io___raw_s1 = new KaitaiStream(__raw_s1);
            _s1 = new S1Type(io___raw_s1, this, m_root);
            __raw_s2 = m_io.ReadBytes(20);
            var io___raw_s2 = new KaitaiStream(__raw_s2);
            _s2 = new S2Type(io___raw_s2, this, m_root);
            __raw_s3 = m_io.ReadBytes(20);
            var io___raw_s3 = new KaitaiStream(__raw_s3);
            _s3 = new S3Type(io___raw_s3, this, m_root);
            __raw_s4 = m_io.ReadBytes(20);
            var io___raw_s4 = new KaitaiStream(__raw_s4);
            _s4 = new S4Type(io___raw_s4, this, m_root);
        }
        public partial class S1Type : KaitaiStruct
        {
            public static S1Type FromFile(string fileName)
            {
                return new S1Type(new KaitaiStream(fileName));
            }

            public S1Type(KaitaiStream p__io, StrEosPadTermEqual p__parent = null, StrEosPadTermEqual p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytesFull(), 64), 64, false));
            }
            private string _value;
            private StrEosPadTermEqual m_root;
            private StrEosPadTermEqual m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTermEqual M_Root { get { return m_root; } }
            public StrEosPadTermEqual M_Parent { get { return m_parent; } }
        }
        public partial class S2Type : KaitaiStruct
        {
            public static S2Type FromFile(string fileName)
            {
                return new S2Type(new KaitaiStream(fileName));
            }

            public S2Type(KaitaiStream p__io, StrEosPadTermEqual p__parent = null, StrEosPadTermEqual p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytesFull(), 43), 64, true));
            }
            private string _value;
            private StrEosPadTermEqual m_root;
            private StrEosPadTermEqual m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTermEqual M_Root { get { return m_root; } }
            public StrEosPadTermEqual M_Parent { get { return m_parent; } }
        }
        public partial class S3Type : KaitaiStruct
        {
            public static S3Type FromFile(string fileName)
            {
                return new S3Type(new KaitaiStream(fileName));
            }

            public S3Type(KaitaiStream p__io, StrEosPadTermEqual p__parent = null, StrEosPadTermEqual p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytesFull(), 43), 43, false));
            }
            private string _value;
            private StrEosPadTermEqual m_root;
            private StrEosPadTermEqual m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTermEqual M_Root { get { return m_root; } }
            public StrEosPadTermEqual M_Parent { get { return m_parent; } }
        }
        public partial class S4Type : KaitaiStruct
        {
            public static S4Type FromFile(string fileName)
            {
                return new S4Type(new KaitaiStream(fileName));
            }

            public S4Type(KaitaiStream p__io, StrEosPadTermEqual p__parent = null, StrEosPadTermEqual p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = System.Text.Encoding.GetEncoding("UTF-8").GetString(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytesFull(), 46), 46, true));
            }
            private string _value;
            private StrEosPadTermEqual m_root;
            private StrEosPadTermEqual m_parent;
            public string Value { get { return _value; } }
            public StrEosPadTermEqual M_Root { get { return m_root; } }
            public StrEosPadTermEqual M_Parent { get { return m_parent; } }
        }
        private S1Type _s1;
        private S2Type _s2;
        private S3Type _s3;
        private S4Type _s4;
        private StrEosPadTermEqual m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_s1;
        private byte[] __raw_s2;
        private byte[] __raw_s3;
        private byte[] __raw_s4;
        public S1Type S1 { get { return _s1; } }
        public S2Type S2 { get { return _s2; } }
        public S3Type S3 { get { return _s3; } }
        public S4Type S4 { get { return _s4; } }
        public StrEosPadTermEqual M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawS1 { get { return __raw_s1; } }
        public byte[] M_RawS2 { get { return __raw_s2; } }
        public byte[] M_RawS3 { get { return __raw_s3; } }
        public byte[] M_RawS4 { get { return __raw_s4; } }
    }
}
