// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessXorConst : KaitaiStruct
    {
        public static ProcessXorConst FromFile(string fileName)
        {
            return new ProcessXorConst(new KaitaiStream(fileName));
        }

        public ProcessXorConst(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessXorConst p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _key = m_io.ReadU1();
            __raw_buf = m_io.ReadBytesFull();
            _buf = m_io.ProcessXor(__raw_buf, 255);
        }
        private byte _key;
        private byte[] _buf;
        private ProcessXorConst m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf;
        public byte Key { get { return _key; } }
        public byte[] Buf { get { return _buf; } }
        public ProcessXorConst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf { get { return __raw_buf; } }
    }
}
