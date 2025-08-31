// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionBitsBe : KaitaiStruct
    {
        public static EofExceptionBitsBe FromFile(string fileName)
        {
            return new EofExceptionBitsBe(new KaitaiStream(fileName));
        }

        public EofExceptionBitsBe(KaitaiStream p__io, KaitaiStruct p__parent = null, EofExceptionBitsBe p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _preBits = m_io.ReadBitsIntBe(7);
            _failBits = m_io.ReadBitsIntBe(18);
        }
        private ulong _preBits;
        private ulong _failBits;
        private EofExceptionBitsBe m_root;
        private KaitaiStruct m_parent;
        public ulong PreBits { get { return _preBits; } }
        public ulong FailBits { get { return _failBits; } }
        public EofExceptionBitsBe M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
