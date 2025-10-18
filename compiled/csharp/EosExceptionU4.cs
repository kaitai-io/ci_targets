// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EosExceptionU4 : KaitaiStruct
    {
        public static EosExceptionU4 FromFile(string fileName)
        {
            return new EosExceptionU4(new KaitaiStream(fileName));
        }

        public EosExceptionU4(KaitaiStream p__io, KaitaiStruct p__parent = null, EosExceptionU4 p__root = null) : base(p__io)
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

            public Data(KaitaiStream p__io, EosExceptionU4 p__parent = null, EosExceptionU4 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _prebuf = m_io.ReadBytes(3);
                _failInt = m_io.ReadU4le();
            }
            public byte[] Prebuf { get { return _prebuf; } }
            public uint FailInt { get { return _failInt; } }
            public EosExceptionU4 M_Root { get { return m_root; } }
            public EosExceptionU4 M_Parent { get { return m_parent; } }
            private byte[] _prebuf;
            private uint _failInt;
            private EosExceptionU4 m_root;
            private EosExceptionU4 m_parent;
        }
        public Data Envelope { get { return _envelope; } }
        public EosExceptionU4 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawEnvelope { get { return __raw_envelope; } }
        private Data _envelope;
        private EosExceptionU4 m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_envelope;
    }
}
