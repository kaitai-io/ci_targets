// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessRotate : KaitaiStruct
    {
        public static ProcessRotate FromFile(string fileName)
        {
            return new ProcessRotate(new KaitaiStream(fileName));
        }

        public ProcessRotate(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessRotate p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            __raw_buf1 = m_io.ReadBytes(5);
            _buf1 = m_io.ProcessRotateLeft(__raw_buf1, 3, 1);
            __raw_buf2 = m_io.ReadBytes(5);
            _buf2 = m_io.ProcessRotateLeft(__raw_buf2, 8 - (3), 1);
            _key = m_io.ReadU1();
            __raw_buf3 = m_io.ReadBytes(5);
            _buf3 = m_io.ProcessRotateLeft(__raw_buf3, Key, 1);
        }
        private byte[] _buf1;
        private byte[] _buf2;
        private byte _key;
        private byte[] _buf3;
        private ProcessRotate m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf1;
        private byte[] __raw_buf2;
        private byte[] __raw_buf3;
        public byte[] Buf1 { get { return _buf1; } }
        public byte[] Buf2 { get { return _buf2; } }
        public byte Key { get { return _key; } }
        public byte[] Buf3 { get { return _buf3; } }
        public ProcessRotate M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf1 { get { return __raw_buf1; } }
        public byte[] M_RawBuf2 { get { return __raw_buf2; } }
        public byte[] M_RawBuf3 { get { return __raw_buf3; } }
    }
}
