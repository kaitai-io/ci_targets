// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsUnalignedB64Be : KaitaiStruct
    {
        public static BitsUnalignedB64Be FromFile(string fileName)
        {
            return new BitsUnalignedB64Be(new KaitaiStream(fileName));
        }

        public BitsUnalignedB64Be(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsUnalignedB64Be p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadBitsIntBe(1) != 0;
            _b = m_io.ReadBitsIntBe(64);
            _c = m_io.ReadBitsIntBe(7);
        }
        private bool _a;
        private ulong _b;
        private ulong _c;
        private BitsUnalignedB64Be m_root;
        private KaitaiStruct m_parent;
        public bool A { get { return _a; } }
        public ulong B { get { return _b; } }
        public ulong C { get { return _c; } }
        public BitsUnalignedB64Be M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
