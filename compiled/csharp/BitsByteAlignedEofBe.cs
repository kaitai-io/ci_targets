// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsByteAlignedEofBe : KaitaiStruct
    {
        public static BitsByteAlignedEofBe FromFile(string fileName)
        {
            return new BitsByteAlignedEofBe(new KaitaiStream(fileName));
        }

        public BitsByteAlignedEofBe(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsByteAlignedEofBe p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _prebuf = m_io.ReadBytes(8);
            _bits = m_io.ReadBitsIntBe(31);
        }
        public byte[] Prebuf { get { return _prebuf; } }
        public ulong Bits { get { return _bits; } }
        public BitsByteAlignedEofBe M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte[] _prebuf;
        private ulong _bits;
        private BitsByteAlignedEofBe m_root;
        private KaitaiStruct m_parent;
    }
}
