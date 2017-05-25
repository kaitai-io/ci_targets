// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsByteAligned : KaitaiStruct
    {
        public static BitsByteAligned FromFile(string fileName)
        {
            return new BitsByteAligned(new KaitaiStream(fileName));
        }

        public BitsByteAligned(KaitaiStream io, KaitaiStruct parent = null, BitsByteAligned root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _one = m_io.ReadBitsInt(6);
            m_io.AlignToByte();
            _byte1 = m_io.ReadU1();
            _two = m_io.ReadBitsInt(3);
            _three = m_io.ReadBitsInt(1) != 0;
            m_io.AlignToByte();
            _byte2 = m_io.ReadU1();
            _four = m_io.ReadBitsInt(14);
            m_io.AlignToByte();
            _byte3 = m_io.ReadBytes(1);
            _fullByte = m_io.ReadBitsInt(8);
            m_io.AlignToByte();
            _byte4 = m_io.ReadU1();
            }
        private ulong _one;
        private byte _byte1;
        private ulong _two;
        private bool _three;
        private byte _byte2;
        private ulong _four;
        private byte[] _byte3;
        private ulong _fullByte;
        private byte _byte4;
        private BitsByteAligned m_root;
        private KaitaiStruct m_parent;
        public ulong One { get { return _one; } }
        public byte Byte1 { get { return _byte1; } }
        public ulong Two { get { return _two; } }
        public bool Three { get { return _three; } }
        public byte Byte2 { get { return _byte2; } }
        public ulong Four { get { return _four; } }
        public byte[] Byte3 { get { return _byte3; } }
        public ulong FullByte { get { return _fullByte; } }
        public byte Byte4 { get { return _byte4; } }
        public BitsByteAligned M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
