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
            f_dif = false;
            f_isHack = false;
            _read();
        }
        private void _read()
        {
            if (!(IsHack)) {
                __raw_difWoHack = m_io.ReadBytes(1);
                var io___raw_difWoHack = new KaitaiStream(__raw_difWoHack);
                _difWoHack = new HelloWorld(io___raw_difWoHack);
            }
            if (IsHack) {
                __raw__raw_difWithHack = m_io.ReadBytes(1);
                __raw_difWithHack = m_io.ProcessXor(__raw__raw_difWithHack, 3);
                var io___raw_difWithHack = new KaitaiStream(__raw_difWithHack);
                _difWithHack = new HelloWorld(io___raw_difWithHack);
            }
        }
        private bool f_dif;
        private HelloWorld _dif;
        public HelloWorld Dif
        {
            get
            {
                if (f_dif)
                    return _dif;
                f_dif = true;
                _dif = (HelloWorld) ((!(IsHack) ? DifWoHack : DifWithHack));
                return _dif;
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
                f_isHack = true;
                _isHack = (bool) (false);
                return _isHack;
            }
        }
        private HelloWorld _difWoHack;
        private HelloWorld _difWithHack;
        private TypeTernaryOpaque m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_difWoHack;
        private byte[] __raw_difWithHack;
        private byte[] __raw__raw_difWithHack;
        public HelloWorld DifWoHack { get { return _difWoHack; } }
        public HelloWorld DifWithHack { get { return _difWithHack; } }
        public TypeTernaryOpaque M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawDifWoHack { get { return __raw_difWoHack; } }
        public byte[] M_RawDifWithHack { get { return __raw_difWithHack; } }
        public byte[] M_RawM_RawDifWithHack { get { return __raw__raw_difWithHack; } }
    }
}
