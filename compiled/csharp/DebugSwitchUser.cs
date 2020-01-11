// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class DebugSwitchUser : KaitaiStruct
    {
        public static DebugSwitchUser FromFile(string fileName)
        {
            return new DebugSwitchUser(new KaitaiStream(fileName));
        }

        public DebugSwitchUser(KaitaiStream p__io, KaitaiStruct p__parent = null, DebugSwitchUser p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _code = m_io.ReadU1();
            switch (Code) {
            case 1: {
                _data = new One(m_io, this, m_root);
                _data._read();
                break;
            }
            case 2: {
                _data = new Two(m_io, this, m_root);
                _data._read();
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

            public One(KaitaiStream p__io, DebugSwitchUser p__parent = null, DebugSwitchUser p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
            }
            public void _read()
            {
                _val = m_io.ReadS2le();
            }
            private short _val;
            private DebugSwitchUser m_root;
            private DebugSwitchUser m_parent;
            public short Val { get { return _val; } }
            public DebugSwitchUser M_Root { get { return m_root; } }
            public DebugSwitchUser M_Parent { get { return m_parent; } }
        }
        public partial class Two : KaitaiStruct
        {
            public static Two FromFile(string fileName)
            {
                return new Two(new KaitaiStream(fileName));
            }

            public Two(KaitaiStream p__io, DebugSwitchUser p__parent = null, DebugSwitchUser p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
            }
            public void _read()
            {
                _val = m_io.ReadU2le();
            }
            private ushort _val;
            private DebugSwitchUser m_root;
            private DebugSwitchUser m_parent;
            public ushort Val { get { return _val; } }
            public DebugSwitchUser M_Root { get { return m_root; } }
            public DebugSwitchUser M_Parent { get { return m_parent; } }
        }
        private byte _code;
        private KaitaiStruct _data;
        private DebugSwitchUser m_root;
        private KaitaiStruct m_parent;
        public byte Code { get { return _code; } }
        public KaitaiStruct Data { get { return _data; } }
        public DebugSwitchUser M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
