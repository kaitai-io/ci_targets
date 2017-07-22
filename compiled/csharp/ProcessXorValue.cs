// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessXorValue : KaitaiStruct
    {
        public static ProcessXorValue FromFile(string fileName)
        {
            return new ProcessXorValue(new KaitaiStream(fileName));
        }

        public ProcessXorValue(KaitaiStream io, KaitaiStruct parent = null, ProcessXorValue root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _key = m_io.ReadU1();
            __raw_buf = m_io.ReadBytesFull();
            _buf = m_io.ProcessXor(__raw_buf, Key);
        }
        private byte _key;
        private byte[] _buf;
        private ProcessXorValue m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf;
        public byte Key { get { return _key; } }
        public byte[] Buf { get { return _buf; } }
        public ProcessXorValue M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf { get { return __raw_buf; } }
    }
}
