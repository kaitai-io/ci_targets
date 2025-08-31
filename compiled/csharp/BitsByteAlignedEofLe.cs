// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsByteAlignedEofLe : KaitaiStruct
    {
        public static BitsByteAlignedEofLe FromFile(string fileName)
        {
            return new BitsByteAlignedEofLe(new KaitaiStream(fileName));
        }

        public BitsByteAlignedEofLe(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsByteAlignedEofLe p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _prebuf = m_io.ReadBytes(8);
            _bits = m_io.ReadBitsIntLe(31);
        }
        private byte[] _prebuf;
        private ulong _bits;
        private BitsByteAlignedEofLe m_root;
        private KaitaiStruct m_parent;
        public byte[] Prebuf { get { return _prebuf; } }
        public ulong Bits { get { return _bits; } }
        public BitsByteAlignedEofLe M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
