// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsSignedB32Le : KaitaiStruct
    {
        public static BitsSignedB32Le FromFile(string fileName)
        {
            return new BitsSignedB32Le(new KaitaiStream(fileName));
        }

        public BitsSignedB32Le(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsSignedB32Le p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _aNum = m_io.ReadBitsIntLe(31);
            _aBit = m_io.ReadBitsIntLe(1) != 0;
            _bNum = m_io.ReadBitsIntLe(31);
            _bBit = m_io.ReadBitsIntLe(1) != 0;
        }
        private ulong _aNum;
        private bool _aBit;
        private ulong _bNum;
        private bool _bBit;
        private BitsSignedB32Le m_root;
        private KaitaiStruct m_parent;
        public ulong ANum { get { return _aNum; } }
        public bool ABit { get { return _aBit; } }
        public ulong BNum { get { return _bNum; } }
        public bool BBit { get { return _bBit; } }
        public BitsSignedB32Le M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
