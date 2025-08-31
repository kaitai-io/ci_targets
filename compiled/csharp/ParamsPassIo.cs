// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsPassIo : KaitaiStruct
    {
        public static ParamsPassIo FromFile(string fileName)
        {
            return new ParamsPassIo(new KaitaiStream(fileName));
        }

        public ParamsPassIo(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassIo p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_first = m_io.ReadBytes(1);
            var io___raw_first = new KaitaiStream(__raw_first);
            _first = new Block(io___raw_first, this, m_root);
            _one = new ParamType((First.Foo == 255 ? First.M_Io : M_Root.M_Io), m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ParamsPassIo p__parent = null, ParamsPassIo p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadU1();
            }
            private byte _foo;
            private ParamsPassIo m_root;
            private ParamsPassIo m_parent;
            public byte Foo { get { return _foo; } }
            public ParamsPassIo M_Root { get { return m_root; } }
            public ParamsPassIo M_Parent { get { return m_parent; } }
        }
        public partial class ParamType : KaitaiStruct
        {
            public ParamType(KaitaiStream p_argStream, KaitaiStream p__io, ParamsPassIo p__parent = null, ParamsPassIo p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _argStream = p_argStream;
                _read();
            }
            private void _read()
            {
                _buf = m_io.ReadBytes(ArgStream.Size);
            }
            private byte[] _buf;
            private KaitaiStream _argStream;
            private ParamsPassIo m_root;
            private ParamsPassIo m_parent;
            public byte[] Buf { get { return _buf; } }
            public KaitaiStream ArgStream { get { return _argStream; } }
            public ParamsPassIo M_Root { get { return m_root; } }
            public ParamsPassIo M_Parent { get { return m_parent; } }
        }
        private Block _first;
        private ParamType _one;
        private ParamsPassIo m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_first;
        public Block First { get { return _first; } }
        public ParamType One { get { return _one; } }
        public ParamsPassIo M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawFirst { get { return __raw_first; } }
    }
}
