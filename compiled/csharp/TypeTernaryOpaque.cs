// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TypeTernaryOpaque : KaitaiStruct
    {
        public static TypeTernaryOpaque FromFile(string fileName)
        {
            return new TypeTernaryOpaque(new KaitaiStream(fileName));
        }

        public TypeTernaryOpaque(KaitaiStream p__io, KaitaiStruct p__parent = null, TypeTernaryOpaque p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_isHack = false;
            f_dif = false;
            _read();
        }
        private void _read()
        {
            if (!(IsHack)) {
                __raw_difWoHack = m_io.ReadBytes(12);
                var io___raw_difWoHack = new KaitaiStream(__raw_difWoHack);
                _difWoHack = new TermStrz(io___raw_difWoHack);
            }
            if (IsHack) {
                __raw__raw_difWithHack = m_io.ReadBytes(12);
                __raw_difWithHack = m_io.ProcessXor(__raw__raw_difWithHack, 3);
                var io___raw_difWithHack = new KaitaiStream(__raw_difWithHack);
                _difWithHack = new TermStrz(io___raw_difWithHack);
            }
        }
        private bool f_isHack;
        private bool _isHack;
        public bool IsHack
        {
            get
            {
                if (f_isHack)
                    return _isHack;
                _isHack = (bool) (false);
                f_isHack = true;
                return _isHack;
            }
        }
        private bool f_dif;
        private TermStrz _dif;
        public TermStrz Dif
        {
            get
            {
                if (f_dif)
                    return _dif;
                _dif = (TermStrz) ((!(IsHack) ? DifWoHack : DifWithHack));
                f_dif = true;
                return _dif;
            }
        }
        private TermStrz _difWoHack;
        private TermStrz _difWithHack;
        private TypeTernaryOpaque m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_difWoHack;
        private byte[] __raw__raw_difWithHack;
        private byte[] __raw_difWithHack;
        public TermStrz DifWoHack { get { return _difWoHack; } }
        public TermStrz DifWithHack { get { return _difWithHack; } }
        public TypeTernaryOpaque M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawDifWoHack { get { return __raw_difWoHack; } }
        public byte[] M_RawM_RawDifWithHack { get { return __raw__raw_difWithHack; } }
        public byte[] M_RawDifWithHack { get { return __raw_difWithHack; } }
    }
}
