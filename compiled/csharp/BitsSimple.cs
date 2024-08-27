// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsSimple : KaitaiStruct
    {
        public static BitsSimple FromFile(string fileName)
        {
            return new BitsSimple(new KaitaiStream(fileName));
        }

        public BitsSimple(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsSimple p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_testIfB1 = false;
            _read();
        }
        private void _read()
        {
            _byte1 = m_io.ReadBitsIntBe(8);
            _byte2 = m_io.ReadBitsIntBe(8);
            _bitsA = m_io.ReadBitsIntBe(1) != 0;
            _bitsB = m_io.ReadBitsIntBe(3);
            _bitsC = m_io.ReadBitsIntBe(4);
            _largeBits1 = m_io.ReadBitsIntBe(10);
            _spacer = m_io.ReadBitsIntBe(3);
            _largeBits2 = m_io.ReadBitsIntBe(11);
            m_io.AlignToByte();
            _normalS2 = m_io.ReadS2be();
            _byte8910 = m_io.ReadBitsIntBe(24);
            _byte11To14 = m_io.ReadBitsIntBe(32);
            _byte15To19 = m_io.ReadBitsIntBe(40);
            _byte20To27 = m_io.ReadBitsIntBe(64);
        }
        private bool f_testIfB1;
        private sbyte? _testIfB1;
        public sbyte? TestIfB1
        {
            get
            {
                if (f_testIfB1)
                    return _testIfB1;
                f_testIfB1 = true;
                if (BitsA == false) {
                    _testIfB1 = (sbyte) (123);
                }
                return _testIfB1;
            }
        }
        private ulong _byte1;
        private ulong _byte2;
        private bool _bitsA;
        private ulong _bitsB;
        private ulong _bitsC;
        private ulong _largeBits1;
        private ulong _spacer;
        private ulong _largeBits2;
        private short _normalS2;
        private ulong _byte8910;
        private ulong _byte11To14;
        private ulong _byte15To19;
        private ulong _byte20To27;
        private BitsSimple m_root;
        private KaitaiStruct m_parent;
        public ulong Byte1 { get { return _byte1; } }
        public ulong Byte2 { get { return _byte2; } }
        public bool BitsA { get { return _bitsA; } }
        public ulong BitsB { get { return _bitsB; } }
        public ulong BitsC { get { return _bitsC; } }
        public ulong LargeBits1 { get { return _largeBits1; } }
        public ulong Spacer { get { return _spacer; } }
        public ulong LargeBits2 { get { return _largeBits2; } }
        public short NormalS2 { get { return _normalS2; } }
        public ulong Byte8910 { get { return _byte8910; } }
        public ulong Byte11To14 { get { return _byte11To14; } }
        public ulong Byte15To19 { get { return _byte15To19; } }
        public ulong Byte20To27 { get { return _byte20To27; } }
        public BitsSimple M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
