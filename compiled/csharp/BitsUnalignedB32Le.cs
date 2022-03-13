// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsUnalignedB32Le : KaitaiStruct
    {
        public static BitsUnalignedB32Le FromFile(string fileName)
        {
            return new BitsUnalignedB32Le(new KaitaiStream(fileName));
        }

        public BitsUnalignedB32Le(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsUnalignedB32Le p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadBitsIntLe(1) != 0;
            _b = m_io.ReadBitsIntLe(32);
            _c = m_io.ReadBitsIntLe(7);
        }
        private bool _a;
        private ulong _b;
        private ulong _c;
        private BitsUnalignedB32Le m_root;
        private KaitaiStruct m_parent;
        public bool A { get { return _a; } }
        public ulong B { get { return _b; } }
        public ulong C { get { return _c; } }
        public BitsUnalignedB32Le M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
