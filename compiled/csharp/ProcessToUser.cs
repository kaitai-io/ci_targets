// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessToUser : KaitaiStruct
    {
        public static ProcessToUser FromFile(string fileName)
        {
            return new ProcessToUser(new KaitaiStream(fileName));
        }

        public ProcessToUser(KaitaiStream io, KaitaiStruct parent = null, ProcessToUser root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            __raw__raw_buf1 = m_io.ReadBytes(5);
            __raw_buf1 = m_io.ProcessRotateLeft(__raw__raw_buf1, 3, 1);
            var io___raw_buf1 = new KaitaiStream(__raw_buf1);
            _buf1 = new JustStr(io___raw_buf1, this, m_root);
            }
        public partial class JustStr : KaitaiStruct
        {
            public static JustStr FromFile(string fileName)
            {
                return new JustStr(new KaitaiStream(fileName));
            }

            public JustStr(KaitaiStream io, ProcessToUser parent = null, ProcessToUser root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _str = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesFull());
                }
            private string _str;
            private ProcessToUser m_root;
            private ProcessToUser m_parent;
            public string Str { get { return _str; } }
            public ProcessToUser M_Root { get { return m_root; } }
            public ProcessToUser M_Parent { get { return m_parent; } }
        }
        private JustStr _buf1;
        private ProcessToUser m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw__raw_buf1;
        private byte[] __raw_buf1;
        public JustStr Buf1 { get { return _buf1; } }
        public ProcessToUser M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawM_RawBuf1 { get { return __raw__raw_buf1; } }
        public byte[] M_RawBuf1 { get { return __raw_buf1; } }
    }
}
