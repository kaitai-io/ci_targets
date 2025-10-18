// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EofExceptionBitsLe : KaitaiStruct
    {
        public static EofExceptionBitsLe FromFile(string fileName)
        {
            return new EofExceptionBitsLe(new KaitaiStream(fileName));
        }

        public EofExceptionBitsLe(KaitaiStream p__io, KaitaiStruct p__parent = null, EofExceptionBitsLe p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _preBits = m_io.ReadBitsIntLe(7);
            _failBits = m_io.ReadBitsIntLe(18);
        }
        public ulong PreBits { get { return _preBits; } }
        public ulong FailBits { get { return _failBits; } }
        public EofExceptionBitsLe M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _preBits;
        private ulong _failBits;
        private EofExceptionBitsLe m_root;
        private KaitaiStruct m_parent;
    }
}
