// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessCustomNoArgs : KaitaiStruct
    {
        public static ProcessCustomNoArgs FromFile(string fileName)
        {
            return new ProcessCustomNoArgs(new KaitaiStream(fileName));
        }

        public ProcessCustomNoArgs(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessCustomNoArgs p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_buf = m_io.ReadBytes(5);
            CustomFxNoArgs _process__raw_buf = new CustomFxNoArgs();
            _buf = _process__raw_buf.Decode(__raw_buf);
        }
        private byte[] _buf;
        private ProcessCustomNoArgs m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf;
        public byte[] Buf { get { return _buf; } }
        public ProcessCustomNoArgs M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf { get { return __raw_buf; } }
    }
}
