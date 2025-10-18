// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsSignedShiftB32Le : KaitaiStruct
    {
        public static BitsSignedShiftB32Le FromFile(string fileName)
        {
            return new BitsSignedShiftB32Le(new KaitaiStream(fileName));
        }

        public BitsSignedShiftB32Le(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsSignedShiftB32Le p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadBitsIntLe(31);
            _b = m_io.ReadBitsIntLe(9);
        }
        public ulong A { get { return _a; } }
        public ulong B { get { return _b; } }
        public BitsSignedShiftB32Le M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _a;
        private ulong _b;
        private BitsSignedShiftB32Le m_root;
        private KaitaiStruct m_parent;
    }
}
