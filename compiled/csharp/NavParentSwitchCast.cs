// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NavParentSwitchCast : KaitaiStruct
    {
        public static NavParentSwitchCast FromFile(string fileName)
        {
            return new NavParentSwitchCast(new KaitaiStream(fileName));
        }

        public NavParentSwitchCast(KaitaiStream p__io, KaitaiStruct p__parent = null, NavParentSwitchCast p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _main = new Foo(m_io, this, m_root);
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, NavParentSwitchCast p__parent = null, NavParentSwitchCast p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _bufType = m_io.ReadU1();
                _flag = m_io.ReadU1();
                switch (BufType) {
                case 0: {
                    __raw_buf = m_io.ReadBytes(4);
                    var io___raw_buf = new KaitaiStream(__raw_buf);
                    _buf = new Zero(io___raw_buf, this, m_root);
                    break;
                }
                case 1: {
                    __raw_buf = m_io.ReadBytes(4);
                    var io___raw_buf = new KaitaiStream(__raw_buf);
                    _buf = new One(io___raw_buf, this, m_root);
                    break;
                }
                default: {
                    _buf = m_io.ReadBytes(4);
                    break;
                }
                }
            }
            public partial class Common : KaitaiStruct
            {
                public static Common FromFile(string fileName)
                {
                    return new Common(new KaitaiStream(fileName));
                }

                public Common(KaitaiStream p__io, KaitaiStruct p__parent = null, NavParentSwitchCast p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    f_flag = false;
                    _read();
                }
                private void _read()
                {
                }
                public byte Flag
                {
                    get
                    {
                        if (f_flag)
                            return _flag;
                        f_flag = true;
                        _flag = (byte) (((NavParentSwitchCast.Foo) (M_Parent.M_Parent)).Flag);
                        return _flag;
                    }
                }
                public NavParentSwitchCast M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
                private bool f_flag;
                private byte _flag;
                private NavParentSwitchCast m_root;
                private KaitaiStruct m_parent;
            }
            public partial class One : KaitaiStruct
            {
                public static One FromFile(string fileName)
                {
                    return new One(new KaitaiStream(fileName));
                }

                public One(KaitaiStream p__io, NavParentSwitchCast.Foo p__parent = null, NavParentSwitchCast p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _branch = new Common(m_io, this, m_root);
                }
                public Common Branch { get { return _branch; } }
                public NavParentSwitchCast M_Root { get { return m_root; } }
                public NavParentSwitchCast.Foo M_Parent { get { return m_parent; } }
                private Common _branch;
                private NavParentSwitchCast m_root;
                private NavParentSwitchCast.Foo m_parent;
            }
            public partial class Zero : KaitaiStruct
            {
                public static Zero FromFile(string fileName)
                {
                    return new Zero(new KaitaiStream(fileName));
                }

                public Zero(KaitaiStream p__io, NavParentSwitchCast.Foo p__parent = null, NavParentSwitchCast p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _branch = new Common(m_io, this, m_root);
                }
                public Common Branch { get { return _branch; } }
                public NavParentSwitchCast M_Root { get { return m_root; } }
                public NavParentSwitchCast.Foo M_Parent { get { return m_parent; } }
                private Common _branch;
                private NavParentSwitchCast m_root;
                private NavParentSwitchCast.Foo m_parent;
            }
            public byte BufType { get { return _bufType; } }
            public byte Flag { get { return _flag; } }
            public object Buf { get { return _buf; } }
            public NavParentSwitchCast M_Root { get { return m_root; } }
            public NavParentSwitchCast M_Parent { get { return m_parent; } }
            public byte[] M_RawBuf { get { return __raw_buf; } }
            private byte _bufType;
            private byte _flag;
            private object _buf;
            private NavParentSwitchCast m_root;
            private NavParentSwitchCast m_parent;
            private byte[] __raw_buf;
        }
        public Foo Main { get { return _main; } }
        public NavParentSwitchCast M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Foo _main;
        private NavParentSwitchCast m_root;
        private KaitaiStruct m_parent;
    }
}
