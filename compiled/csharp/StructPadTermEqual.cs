// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StructPadTermEqual : KaitaiStruct
    {
        public static StructPadTermEqual FromFile(string fileName)
        {
            return new StructPadTermEqual(new KaitaiStream(fileName));
        }

        public StructPadTermEqual(KaitaiStream p__io, KaitaiStruct p__parent = null, StructPadTermEqual p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_s1 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64), 64, false);
            var io___raw_s1 = new KaitaiStream(__raw_s1);
            _s1 = new BytesWrapper(io___raw_s1, this, m_root);
            __raw_s2 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, true);
            var io___raw_s2 = new KaitaiStream(__raw_s2);
            _s2 = new BytesWrapper(io___raw_s2, this, m_root);
            __raw_s3 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 43, false);
            var io___raw_s3 = new KaitaiStream(__raw_s3);
            _s3 = new BytesWrapper(io___raw_s3, this, m_root);
            __raw_s4 = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 46), 46, true);
            var io___raw_s4 = new KaitaiStream(__raw_s4);
            _s4 = new BytesWrapper(io___raw_s4, this, m_root);
        }
        public partial class BytesWrapper : KaitaiStruct
        {
            public static BytesWrapper FromFile(string fileName)
            {
                return new BytesWrapper(new KaitaiStream(fileName));
            }

            public BytesWrapper(KaitaiStream p__io, StructPadTermEqual p__parent = null, StructPadTermEqual p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _value = m_io.ReadBytesFull();
            }
            private byte[] _value;
            private StructPadTermEqual m_root;
            private StructPadTermEqual m_parent;
            public byte[] Value { get { return _value; } }
            public StructPadTermEqual M_Root { get { return m_root; } }
            public StructPadTermEqual M_Parent { get { return m_parent; } }
        }
        private BytesWrapper _s1;
        private BytesWrapper _s2;
        private BytesWrapper _s3;
        private BytesWrapper _s4;
        private StructPadTermEqual m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_s1;
        private byte[] __raw_s2;
        private byte[] __raw_s3;
        private byte[] __raw_s4;
        public BytesWrapper S1 { get { return _s1; } }
        public BytesWrapper S2 { get { return _s2; } }
        public BytesWrapper S3 { get { return _s3; } }
        public BytesWrapper S4 { get { return _s4; } }
        public StructPadTermEqual M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawS1 { get { return __raw_s1; } }
        public byte[] M_RawS2 { get { return __raw_s2; } }
        public byte[] M_RawS3 { get { return __raw_s3; } }
        public byte[] M_RawS4 { get { return __raw_s4; } }
    }
}
