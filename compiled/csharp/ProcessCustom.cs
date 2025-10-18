// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessCustom : KaitaiStruct
    {
        public static ProcessCustom FromFile(string fileName)
        {
            return new ProcessCustom(new KaitaiStream(fileName));
        }

        public ProcessCustom(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessCustom p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_buf1 = m_io.ReadBytes(5);
            MyCustomFx _process__raw_buf1 = new MyCustomFx(7, true, new byte[] { 32, 48, 64 });
            _buf1 = _process__raw_buf1.Decode(__raw_buf1);
            __raw_buf2 = m_io.ReadBytes(5);
            Nested.Deeply.CustomFx _process__raw_buf2 = new Nested.Deeply.CustomFx(7);
            _buf2 = _process__raw_buf2.Decode(__raw_buf2);
            _key = m_io.ReadU1();
            __raw_buf3 = m_io.ReadBytes(5);
            MyCustomFx _process__raw_buf3 = new MyCustomFx(Key, false, new byte[] { 0 });
            _buf3 = _process__raw_buf3.Decode(__raw_buf3);
        }
        public byte[] Buf1 { get { return _buf1; } }
        public byte[] Buf2 { get { return _buf2; } }
        public byte Key { get { return _key; } }
        public byte[] Buf3 { get { return _buf3; } }
        public ProcessCustom M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBuf1 { get { return __raw_buf1; } }
        public byte[] M_RawBuf2 { get { return __raw_buf2; } }
        public byte[] M_RawBuf3 { get { return __raw_buf3; } }
        private byte[] _buf1;
        private byte[] _buf2;
        private byte _key;
        private byte[] _buf3;
        private ProcessCustom m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_buf1;
        private byte[] __raw_buf2;
        private byte[] __raw_buf3;
    }
}
