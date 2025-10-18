// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumToIInvalid : KaitaiStruct
    {
        public static EnumToIInvalid FromFile(string fileName)
        {
            return new EnumToIInvalid(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 102,
            Cat = 124,
        }
        public EnumToIInvalid(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumToIInvalid p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneLtTwo = false;
            f_pet2EqIntF = false;
            f_pet2EqIntT = false;
            f_pet2I = false;
            f_pet2IToS = false;
            f_pet2Mod = false;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Animal) m_io.ReadU1());
            _pet2 = ((Animal) m_io.ReadU1());
        }
        public bool OneLtTwo
        {
            get
            {
                if (f_oneLtTwo)
                    return _oneLtTwo;
                f_oneLtTwo = true;
                _oneLtTwo = (bool) (((int) Pet1) < ((int) Pet2));
                return _oneLtTwo;
            }
        }
        public bool Pet2EqIntF
        {
            get
            {
                if (f_pet2EqIntF)
                    return _pet2EqIntF;
                f_pet2EqIntF = true;
                _pet2EqIntF = (bool) (((int) Pet2) == 110);
                return _pet2EqIntF;
            }
        }
        public bool Pet2EqIntT
        {
            get
            {
                if (f_pet2EqIntT)
                    return _pet2EqIntT;
                f_pet2EqIntT = true;
                _pet2EqIntT = (bool) (((int) Pet2) == 111);
                return _pet2EqIntT;
            }
        }
        public int Pet2I
        {
            get
            {
                if (f_pet2I)
                    return _pet2I;
                f_pet2I = true;
                _pet2I = (int) (((int) Pet2));
                return _pet2I;
            }
        }
        public string Pet2IToS
        {
            get
            {
                if (f_pet2IToS)
                    return _pet2IToS;
                f_pet2IToS = true;
                _pet2IToS = (string) (((int) Pet2).ToString());
                return _pet2IToS;
            }
        }
        public int Pet2Mod
        {
            get
            {
                if (f_pet2Mod)
                    return _pet2Mod;
                f_pet2Mod = true;
                _pet2Mod = (int) (((int) Pet2) + 32768);
                return _pet2Mod;
            }
        }
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumToIInvalid M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_oneLtTwo;
        private bool _oneLtTwo;
        private bool f_pet2EqIntF;
        private bool _pet2EqIntF;
        private bool f_pet2EqIntT;
        private bool _pet2EqIntT;
        private bool f_pet2I;
        private int _pet2I;
        private bool f_pet2IToS;
        private string _pet2IToS;
        private bool f_pet2Mod;
        private int _pet2Mod;
        private Animal _pet1;
        private Animal _pet2;
        private EnumToIInvalid m_root;
        private KaitaiStruct m_parent;
    }
}
