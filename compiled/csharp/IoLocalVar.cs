// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class IoLocalVar : KaitaiStruct
    {
        public static IoLocalVar FromFile(string fileName)
        {
            return new IoLocalVar(new KaitaiStream(fileName));
        }

        public IoLocalVar(KaitaiStream p__io, KaitaiStruct p__parent = null, IoLocalVar p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_messUp = false;
            _read();
        }
        private void _read()
        {
            _skip = m_io.ReadBytes(20);
            if (((IoLocalVar.Dummy) (MessUp)).M_Io.Pos < 0) {
                _alwaysNull = m_io.ReadU1();
            }
            _followup = m_io.ReadU1();
        }
        public partial class Dummy : KaitaiStruct
        {
            public static Dummy FromFile(string fileName)
            {
                return new Dummy(new KaitaiStream(fileName));
            }

            public Dummy(KaitaiStream p__io, IoLocalVar p__parent = null, IoLocalVar p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private IoLocalVar m_root;
            private IoLocalVar m_parent;
            public IoLocalVar M_Root { get { return m_root; } }
            public IoLocalVar M_Parent { get { return m_parent; } }
        }
        private bool f_messUp;
        private object _messUp;
        public object MessUp
        {
            get
            {
                if (f_messUp)
                    return _messUp;
                f_messUp = true;
                KaitaiStream io = M_Root.M_Io;
                long _pos = io.Pos;
                io.Seek(8);
                switch (2) {
                case 1: {
                    __raw_messUp = io.ReadBytes(2);
                    var io___raw_messUp = new KaitaiStream(__raw_messUp);
                    _messUp = new Dummy(io___raw_messUp, this, m_root);
                    break;
                }
                case 2: {
                    __raw_messUp = io.ReadBytes(2);
                    var io___raw_messUp = new KaitaiStream(__raw_messUp);
                    _messUp = new Dummy(io___raw_messUp, this, m_root);
                    break;
                }
                default: {
                    _messUp = io.ReadBytes(2);
                    break;
                }
                }
                io.Seek(_pos);
                return _messUp;
            }
        }
        private byte[] _skip;
        private byte? _alwaysNull;
        private byte _followup;
        private IoLocalVar m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_messUp;
        public byte[] Skip { get { return _skip; } }
        public byte? AlwaysNull { get { return _alwaysNull; } }
        public byte Followup { get { return _followup; } }
        public IoLocalVar M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawMessUp { get { return __raw_messUp; } }
    }
}
