// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class DefaultBitEndianMod : KaitaiStruct
    {
        public static DefaultBitEndianMod FromFile(string fileName)
        {
            return new DefaultBitEndianMod(new KaitaiStream(fileName));
        }

        public DefaultBitEndianMod(KaitaiStream p__io, KaitaiStruct p__parent = null, DefaultBitEndianMod p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _main = new MainObj(m_io, this, m_root);
        }
        public partial class MainObj : KaitaiStruct
        {
            public static MainObj FromFile(string fileName)
            {
                return new MainObj(new KaitaiStream(fileName));
            }

            public MainObj(KaitaiStream p__io, DefaultBitEndianMod p__parent = null, DefaultBitEndianMod p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _one = m_io.ReadBitsIntLe(9);
                _two = m_io.ReadBitsIntLe(15);
                _nest = new Subnest(m_io, this, m_root);
                _nestBe = new SubnestBe(m_io, this, m_root);
            }
            public partial class Subnest : KaitaiStruct
            {
                public static Subnest FromFile(string fileName)
                {
                    return new Subnest(new KaitaiStream(fileName));
                }

                public Subnest(KaitaiStream p__io, DefaultBitEndianMod.MainObj p__parent = null, DefaultBitEndianMod p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _two = m_io.ReadBitsIntLe(16);
                }
                public ulong Two { get { return _two; } }
                public DefaultBitEndianMod M_Root { get { return m_root; } }
                public DefaultBitEndianMod.MainObj M_Parent { get { return m_parent; } }
                private ulong _two;
                private DefaultBitEndianMod m_root;
                private DefaultBitEndianMod.MainObj m_parent;
            }
            public partial class SubnestBe : KaitaiStruct
            {
                public static SubnestBe FromFile(string fileName)
                {
                    return new SubnestBe(new KaitaiStream(fileName));
                }

                public SubnestBe(KaitaiStream p__io, DefaultBitEndianMod.MainObj p__parent = null, DefaultBitEndianMod p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _two = m_io.ReadBitsIntBe(16);
                }
                public ulong Two { get { return _two; } }
                public DefaultBitEndianMod M_Root { get { return m_root; } }
                public DefaultBitEndianMod.MainObj M_Parent { get { return m_parent; } }
                private ulong _two;
                private DefaultBitEndianMod m_root;
                private DefaultBitEndianMod.MainObj m_parent;
            }
            public ulong One { get { return _one; } }
            public ulong Two { get { return _two; } }
            public Subnest Nest { get { return _nest; } }
            public SubnestBe NestBe { get { return _nestBe; } }
            public DefaultBitEndianMod M_Root { get { return m_root; } }
            public DefaultBitEndianMod M_Parent { get { return m_parent; } }
            private ulong _one;
            private ulong _two;
            private Subnest _nest;
            private SubnestBe _nestBe;
            private DefaultBitEndianMod m_root;
            private DefaultBitEndianMod m_parent;
        }
        public MainObj Main { get { return _main; } }
        public DefaultBitEndianMod M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private MainObj _main;
        private DefaultBitEndianMod m_root;
        private KaitaiStruct m_parent;
    }
}
