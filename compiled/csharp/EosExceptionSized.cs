// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EosExceptionSized : KaitaiStruct
    {
        public static EosExceptionSized FromFile(string fileName)
        {
            return new EosExceptionSized(new KaitaiStream(fileName));
        }

        public EosExceptionSized(KaitaiStream p__io, KaitaiStruct p__parent = null, EosExceptionSized p__root = null) : base(p__io)
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

            public Data(KaitaiStream p__io, EosExceptionSized p__parent = null, EosExceptionSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                __raw_buf = m_io.ReadBytes(7);
                var io___raw_buf = new KaitaiStream(__raw_buf);
                _buf = new Foo(io___raw_buf, this, m_root);
            }
            private Foo _buf;
            private EosExceptionSized m_root;
            private EosExceptionSized m_parent;
            private byte[] __raw_buf;
            public Foo Buf { get { return _buf; } }
            public EosExceptionSized M_Root { get { return m_root; } }
            public EosExceptionSized M_Parent { get { return m_parent; } }
            public byte[] M_RawBuf { get { return __raw_buf; } }
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, EosExceptionSized.Data p__parent = null, EosExceptionSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private EosExceptionSized m_root;
            private EosExceptionSized.Data m_parent;
            public EosExceptionSized M_Root { get { return m_root; } }
            public EosExceptionSized.Data M_Parent { get { return m_parent; } }
        }
        private Data _envelope;
        private EosExceptionSized m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_envelope;
        public Data Envelope { get { return _envelope; } }
        public EosExceptionSized M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawEnvelope { get { return __raw_envelope; } }
    }
}
