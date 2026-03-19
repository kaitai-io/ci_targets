// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsByteAligned : KaitaiStruct
    {
        public static BitsByteAligned FromFile(string fileName)
        {
            return new BitsByteAligned(new KaitaiStream(fileName));
        }

        public BitsByteAligned(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsByteAligned p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadBitsIntBe(6);
            _byte1 = m_io.ReadU1();
            _two = m_io.ReadBitsIntBe(3);
            _three = m_io.ReadBitsIntBe(1) != 0;
            _byte2 = m_io.ReadBytes(1);
            _four = m_io.ReadBitsIntBe(14);
            __raw_byte3 = m_io.ReadBytes(3);
            var io___raw_byte3 = new KaitaiStream(__raw_byte3);
            _byte3 = new Foo(io___raw_byte3, this, m_root);
            _fullByte = m_io.ReadBitsIntBe(8);
            _byte4 = m_io.ReadU1();
            _five = m_io.ReadBitsIntBe(22);
            _bytesTerm = m_io.ReadBytesTerm(69, true, true, true);
            _six = m_io.ReadBitsIntBe(8);
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, BitsByteAligned p__parent = null, BitsByteAligned p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _inner = m_io.ReadBitsIntBe(19);
            }
            public ulong Inner { get { return _inner; } }
            public BitsByteAligned M_Root { get { return m_root; } }
            public BitsByteAligned M_Parent { get { return m_parent; } }
            private ulong _inner;
            private BitsByteAligned m_root;
            private BitsByteAligned m_parent;
        }
        public ulong One { get { return _one; } }
        public byte Byte1 { get { return _byte1; } }
        public ulong Two { get { return _two; } }
        public bool Three { get { return _three; } }
        public byte[] Byte2 { get { return _byte2; } }
        public ulong Four { get { return _four; } }
        public Foo Byte3 { get { return _byte3; } }
        public ulong FullByte { get { return _fullByte; } }
        public byte Byte4 { get { return _byte4; } }
        public ulong Five { get { return _five; } }
        public byte[] BytesTerm { get { return _bytesTerm; } }
        public ulong Six { get { return _six; } }
        public BitsByteAligned M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawByte3 { get { return __raw_byte3; } }
        private ulong _one;
        private byte _byte1;
        private ulong _two;
        private bool _three;
        private byte[] _byte2;
        private ulong _four;
        private Foo _byte3;
        private ulong _fullByte;
        private byte _byte4;
        private ulong _five;
        private byte[] _bytesTerm;
        private ulong _six;
        private BitsByteAligned m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_byte3;
    }
}
