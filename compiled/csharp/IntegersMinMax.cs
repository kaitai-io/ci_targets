// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class IntegersMinMax : KaitaiStruct
    {
        public static IntegersMinMax FromFile(string fileName)
        {
            return new IntegersMinMax(new KaitaiStream(fileName));
        }

        public IntegersMinMax(KaitaiStream p__io, KaitaiStruct p__parent = null, IntegersMinMax p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _unsignedMin = new Unsigned(m_io, this, m_root);
            _unsignedMax = new Unsigned(m_io, this, m_root);
            _signedMin = new Signed(m_io, this, m_root);
            _signedMax = new Signed(m_io, this, m_root);
        }
        public partial class Unsigned : KaitaiStruct
        {
            public static Unsigned FromFile(string fileName)
            {
                return new Unsigned(new KaitaiStream(fileName));
            }

            public Unsigned(KaitaiStream p__io, IntegersMinMax p__parent = null, IntegersMinMax p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _u1 = m_io.ReadU1();
                _u2le = m_io.ReadU2le();
                _u4le = m_io.ReadU4le();
                _u8le = m_io.ReadU8le();
                _u2be = m_io.ReadU2be();
                _u4be = m_io.ReadU4be();
                _u8be = m_io.ReadU8be();
            }
            private byte _u1;
            private ushort _u2le;
            private uint _u4le;
            private ulong _u8le;
            private ushort _u2be;
            private uint _u4be;
            private ulong _u8be;
            private IntegersMinMax m_root;
            private IntegersMinMax m_parent;
            public byte U1 { get { return _u1; } }
            public ushort U2le { get { return _u2le; } }
            public uint U4le { get { return _u4le; } }
            public ulong U8le { get { return _u8le; } }
            public ushort U2be { get { return _u2be; } }
            public uint U4be { get { return _u4be; } }
            public ulong U8be { get { return _u8be; } }
            public IntegersMinMax M_Root { get { return m_root; } }
            public IntegersMinMax M_Parent { get { return m_parent; } }
        }
        public partial class Signed : KaitaiStruct
        {
            public static Signed FromFile(string fileName)
            {
                return new Signed(new KaitaiStream(fileName));
            }

            public Signed(KaitaiStream p__io, IntegersMinMax p__parent = null, IntegersMinMax p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _s1 = m_io.ReadS1();
                _s2le = m_io.ReadS2le();
                _s4le = m_io.ReadS4le();
                _s8le = m_io.ReadS8le();
                _s2be = m_io.ReadS2be();
                _s4be = m_io.ReadS4be();
                _s8be = m_io.ReadS8be();
            }
            private sbyte _s1;
            private short _s2le;
            private int _s4le;
            private long _s8le;
            private short _s2be;
            private int _s4be;
            private long _s8be;
            private IntegersMinMax m_root;
            private IntegersMinMax m_parent;
            public sbyte S1 { get { return _s1; } }
            public short S2le { get { return _s2le; } }
            public int S4le { get { return _s4le; } }
            public long S8le { get { return _s8le; } }
            public short S2be { get { return _s2be; } }
            public int S4be { get { return _s4be; } }
            public long S8be { get { return _s8be; } }
            public IntegersMinMax M_Root { get { return m_root; } }
            public IntegersMinMax M_Parent { get { return m_parent; } }
        }
        private Unsigned _unsignedMin;
        private Unsigned _unsignedMax;
        private Signed _signedMin;
        private Signed _signedMax;
        private IntegersMinMax m_root;
        private KaitaiStruct m_parent;
        public Unsigned UnsignedMin { get { return _unsignedMin; } }
        public Unsigned UnsignedMax { get { return _unsignedMax; } }
        public Signed SignedMin { get { return _signedMin; } }
        public Signed SignedMax { get { return _signedMax; } }
        public IntegersMinMax M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
