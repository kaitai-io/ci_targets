// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionSwitchUser : KaitaiStruct
    {
        public static EofExceptionSwitchUser FromFile(string fileName)
        {
            return new EofExceptionSwitchUser(new KaitaiStream(fileName));
        }

        public EofExceptionSwitchUser(KaitaiStream p__io, KaitaiStruct p__parent = null, EofExceptionSwitchUser p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _code = m_io.ReadU2le();
            switch (Code) {
            case 2: {
                _data = new Two(m_io, this, m_root);
                break;
            }
            case 511: {
                _data = new One(m_io, this, m_root);
                break;
            }
            }
        }
        public partial class One : KaitaiStruct
        {
            public static One FromFile(string fileName)
            {
                return new One(new KaitaiStream(fileName));
            }

            public One(KaitaiStream p__io, EofExceptionSwitchUser p__parent = null, EofExceptionSwitchUser p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _val = m_io.ReadS2le();
            }
            public short Val { get { return _val; } }
            public EofExceptionSwitchUser M_Root { get { return m_root; } }
            public EofExceptionSwitchUser M_Parent { get { return m_parent; } }
            private short _val;
            private EofExceptionSwitchUser m_root;
            private EofExceptionSwitchUser m_parent;
        }
        public partial class Two : KaitaiStruct
        {
            public static Two FromFile(string fileName)
            {
                return new Two(new KaitaiStream(fileName));
            }

            public Two(KaitaiStream p__io, EofExceptionSwitchUser p__parent = null, EofExceptionSwitchUser p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _val = m_io.ReadU2le();
            }
            public ushort Val { get { return _val; } }
            public EofExceptionSwitchUser M_Root { get { return m_root; } }
            public EofExceptionSwitchUser M_Parent { get { return m_parent; } }
            private ushort _val;
            private EofExceptionSwitchUser m_root;
            private EofExceptionSwitchUser m_parent;
        }
        public ushort Code { get { return _code; } }
        public KaitaiStruct Data { get { return _data; } }
        public EofExceptionSwitchUser M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ushort _code;
        private KaitaiStruct _data;
        private EofExceptionSwitchUser m_root;
        private KaitaiStruct m_parent;
    }
}
