// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BitsShiftByB64Le : KaitaiStruct
    {
        public static BitsShiftByB64Le FromFile(string fileName)
        {
            return new BitsShiftByB64Le(new KaitaiStream(fileName));
        }

        public BitsShiftByB64Le(KaitaiStream p__io, KaitaiStruct p__parent = null, BitsShiftByB64Le p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadBitsIntLe(64);
            _b = m_io.ReadBitsIntLe(8);
        }
        public ulong A { get { return _a; } }
        public ulong B { get { return _b; } }
        public BitsShiftByB64Le M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _a;
        private ulong _b;
        private BitsShiftByB64Le m_root;
        private KaitaiStruct m_parent;
    }
}
