// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

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
        private bool f_oneLtTwo;
        private bool _oneLtTwo;
        public bool OneLtTwo
        {
            get
            {
                if (f_oneLtTwo)
                    return _oneLtTwo;
                _oneLtTwo = (bool) (Pet1 < Pet2);
                f_oneLtTwo = true;
                return _oneLtTwo;
            }
        }
        private bool f_pet2EqIntF;
        private bool _pet2EqIntF;
        public bool Pet2EqIntF
        {
            get
            {
                if (f_pet2EqIntF)
                    return _pet2EqIntF;
                _pet2EqIntF = (bool) (Pet2 == 110);
                f_pet2EqIntF = true;
                return _pet2EqIntF;
            }
        }
        private bool f_pet2EqIntT;
        private bool _pet2EqIntT;
        public bool Pet2EqIntT
        {
            get
            {
                if (f_pet2EqIntT)
                    return _pet2EqIntT;
                _pet2EqIntT = (bool) (Pet2 == 111);
                f_pet2EqIntT = true;
                return _pet2EqIntT;
            }
        }
        private bool f_pet2I;
        private int _pet2I;
        public int Pet2I
        {
            get
            {
                if (f_pet2I)
                    return _pet2I;
                _pet2I = (int) (Pet2);
                f_pet2I = true;
                return _pet2I;
            }
        }
        private bool f_pet2IToS;
        private string _pet2IToS;
        public string Pet2IToS
        {
            get
            {
                if (f_pet2IToS)
                    return _pet2IToS;
                _pet2IToS = (string) (Convert.ToString((long) (Pet2), 10));
                f_pet2IToS = true;
                return _pet2IToS;
            }
        }
        private bool f_pet2Mod;
        private int _pet2Mod;
        public int Pet2Mod
        {
            get
            {
                if (f_pet2Mod)
                    return _pet2Mod;
                _pet2Mod = (int) ((Pet2 + 32768));
                f_pet2Mod = true;
                return _pet2Mod;
            }
        }
        private Animal _pet1;
        private Animal _pet2;
        private EnumToIInvalid m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumToIInvalid M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
