// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionSized : KaitaiStruct
    {
        public static EofExceptionSized FromFile(string fileName)
        {
            return new EofExceptionSized(new KaitaiStream(fileName));
        }

        public EofExceptionSized(KaitaiStream p__io, KaitaiStruct p__parent = null, EofExceptionSized p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_buf = m_io.ReadBytes(13);
            var io___raw_buf = new KaitaiStream(__raw_buf);
            _buf = new Foo(io___raw_buf, this, m_root);
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, EofExceptionSized p__parent = null, EofExceptionSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            public EofExceptionSized M_Root { get { return m_root; } }
            public EofExceptionSized M_Parent { get { return m_parent; } }
            private EofExceptionSized m_root;
            private EofExceptionSized m_parent;
        }
        public Foo Buf { get { return _buf; } }
        public EofExceptionSized M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf { get { return __raw_buf; } }
        private Foo _buf;
        private EofExceptionSized m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf;
    }
}
