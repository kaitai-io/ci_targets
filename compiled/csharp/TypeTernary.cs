// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TypeTernary : KaitaiStruct
    {
        public static TypeTernary FromFile(string fileName)
        {
            return new TypeTernary(new KaitaiStream(fileName));
        }

        public TypeTernary(KaitaiStream io, KaitaiStruct parent = null, TypeTernary root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_isHack = false;
            f_dif = false;
            f_difValue = false;
            _read();
        }
        private void _read() {
            if (!(IsHack)) {
                __raw_difWoHack = m_io.ReadBytes(1);
                var io___raw_difWoHack = new KaitaiStream(__raw_difWoHack);
                _difWoHack = new Dummy(io___raw_difWoHack, this, m_root);
            }
            __raw__raw_difWithHack = m_io.ReadBytes(1);
            __raw_difWithHack = m_io.ProcessXor(__raw__raw_difWithHack, 3);
            var io___raw_difWithHack = new KaitaiStream(__raw_difWithHack);
            _difWithHack = new Dummy(io___raw_difWithHack, this, m_root);
        }
        public partial class Dummy : KaitaiStruct
        {
            public static Dummy FromFile(string fileName)
            {
                return new Dummy(new KaitaiStream(fileName));
            }

            public Dummy(KaitaiStream io, TypeTernary parent = null, TypeTernary root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _value = m_io.ReadU1();
            }
            private byte _value;
            private TypeTernary m_root;
            private TypeTernary m_parent;
            public byte Value { get { return _value; } }
            public TypeTernary M_Root { get { return m_root; } }
            public TypeTernary M_Parent { get { return m_parent; } }
        }
        private bool f_isHack;
        private bool _isHack;
        public bool IsHack
        {
            get
            {
                if (f_isHack)
                    return _isHack;
                _isHack = (bool) (true);
                f_isHack = true;
                return _isHack;
            }
        }
        private bool f_dif;
        private Dummy _dif;
        public Dummy Dif
        {
            get
            {
                if (f_dif)
                    return _dif;
                _dif = (Dummy) ((!(IsHack) ? DifWoHack : DifWithHack));
                f_dif = true;
                return _dif;
            }
        }
        private bool f_difValue;
        private byte _difValue;
        public byte DifValue
        {
            get
            {
                if (f_difValue)
                    return _difValue;
                _difValue = (byte) (Dif.Value);
                f_difValue = true;
                return _difValue;
            }
        }
        private Dummy _difWoHack;
        private Dummy _difWithHack;
        private TypeTernary m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_difWoHack;
        private byte[] __raw__raw_difWithHack;
        private byte[] __raw_difWithHack;
        public Dummy DifWoHack { get { return _difWoHack; } }
        public Dummy DifWithHack { get { return _difWithHack; } }
        public TypeTernary M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawDifWoHack { get { return __raw_difWoHack; } }
        public byte[] M_RawM_RawDifWithHack { get { return __raw__raw_difWithHack; } }
        public byte[] M_RawDifWithHack { get { return __raw_difWithHack; } }
    }
}
