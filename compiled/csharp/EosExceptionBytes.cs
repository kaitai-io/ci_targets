// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EosExceptionBytes : KaitaiStruct
    {
        public static EosExceptionBytes FromFile(string fileName)
        {
            return new EosExceptionBytes(new KaitaiStream(fileName));
        }

        public EosExceptionBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, EosExceptionBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_envelope = m_io.ReadBytes(6);
            var io___raw_envelope = new KaitaiStream(__raw_envelope);
            _envelope = new Data(io___raw_envelope, this, m_root);
        }
        public partial class Data : KaitaiStruct
        {
            public static Data FromFile(string fileName)
            {
                return new Data(new KaitaiStream(fileName));
            }

            public Data(KaitaiStream p__io, EosExceptionBytes p__parent = null, EosExceptionBytes p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _buf = m_io.ReadBytes(7);
            }
            public byte[] Buf { get { return _buf; } }
            public EosExceptionBytes M_Root { get { return m_root; } }
            public EosExceptionBytes M_Parent { get { return m_parent; } }
            private byte[] _buf;
            private EosExceptionBytes m_root;
            private EosExceptionBytes m_parent;
        }
        public Data Envelope { get { return _envelope; } }
        public EosExceptionBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawEnvelope { get { return __raw_envelope; } }
        private Data _envelope;
        private EosExceptionBytes m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_envelope;
    }
}
