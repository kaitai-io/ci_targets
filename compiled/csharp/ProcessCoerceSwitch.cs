// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessCoerceSwitch : KaitaiStruct
    {
        public static ProcessCoerceSwitch FromFile(string fileName)
        {
            return new ProcessCoerceSwitch(new KaitaiStream(fileName));
        }

        public ProcessCoerceSwitch(KaitaiStream io, KaitaiStruct parent = null, ProcessCoerceSwitch root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_buf = false;
            _read();
        }
        private void _read() {
            _bufType = m_io.ReadU1();
            _flag = m_io.ReadU1();
            if (Flag == 0) {
                switch (BufType) {
                case 0: {
                    __raw_bufUnproc = m_io.ReadBytes(4);
                    var io___raw_bufUnproc = new KaitaiStream(__raw_bufUnproc);
                    _bufUnproc = new Foo(io___raw_bufUnproc, this, m_root);
                    break;
                }
                default: {
                    _bufUnproc = m_io.ReadBytes(4);
                    break;
                }
                }
            }
            if (Flag != 0) {
                switch (BufType) {
                case 0: {
                    __raw__raw_bufProc = m_io.ReadBytes(4);
                    __raw_bufProc = m_io.ProcessXor(__raw__raw_bufProc, 170);
                    var io___raw_bufProc = new KaitaiStream(__raw_bufProc);
                    _bufProc = new Foo(io___raw_bufProc, this, m_root);
                    break;
                }
                default: {
                    __raw_bufProc = m_io.ReadBytes(4);
                    _bufProc = m_io.ProcessXor(__raw_bufProc, 170);
                    break;
                }
                }
            }
            }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream io, ProcessCoerceSwitch parent = null, ProcessCoerceSwitch root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _bar = m_io.ReadBytes(4);
                }
            private byte[] _bar;
            private ProcessCoerceSwitch m_root;
            private ProcessCoerceSwitch m_parent;
            public byte[] Bar { get { return _bar; } }
            public ProcessCoerceSwitch M_Root { get { return m_root; } }
            public ProcessCoerceSwitch M_Parent { get { return m_parent; } }
        }
        private bool f_buf;
        private object _buf;
        public object Buf
        {
            get
            {
                if (f_buf)
                    return _buf;
                _buf = (object) ((Flag == 0 ? BufUnproc : BufProc));
                f_buf = true;
                return _buf;
            }
        }
        private byte _bufType;
        private byte _flag;
        private object _bufUnproc;
        private object _bufProc;
        private ProcessCoerceSwitch m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_bufUnproc;
        private byte[] __raw__raw_bufProc;
        private byte[] __raw_bufProc;
        public byte BufType { get { return _bufType; } }
        public byte Flag { get { return _flag; } }
        public object BufUnproc { get { return _bufUnproc; } }
        public object BufProc { get { return _bufProc; } }
        public ProcessCoerceSwitch M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBufUnproc { get { return __raw_bufUnproc; } }
        public byte[] M_RawM_RawBufProc { get { return __raw__raw_bufProc; } }
        public byte[] M_RawBufProc { get { return __raw_bufProc; } }
    }
}
