// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessXor4Const : KaitaiStruct
    {
        public static ProcessXor4Const FromFile(string fileName)
        {
            return new ProcessXor4Const(new KaitaiStream(fileName));
        }

        public ProcessXor4Const(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessXor4Const p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _key = m_io.ReadBytes(4);
            __raw_buf = m_io.ReadBytesFull();
            _buf = m_io.ProcessXor(__raw_buf, new byte[] { 236, 187, 163, 20 });
        }
        private byte[] _key;
        private byte[] _buf;
        private ProcessXor4Const m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf;
        public byte[] Key { get { return _key; } }
        public byte[] Buf { get { return _buf; } }
        public ProcessXor4Const M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf { get { return __raw_buf; } }
    }
}
