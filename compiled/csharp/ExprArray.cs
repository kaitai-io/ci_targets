// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class ExprArray : KaitaiStruct
    {
        public static ExprArray FromFile(string fileName)
        {
            return new ExprArray(new KaitaiStream(fileName));
        }

        public ExprArray(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprArray p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_afloatFirst = false;
            f_afloatLast = false;
            f_afloatMax = false;
            f_afloatMin = false;
            f_afloatSize = false;
            f_aintFirst = false;
            f_aintLast = false;
            f_aintMax = false;
            f_aintMin = false;
            f_aintSize = false;
            f_astrFirst = false;
            f_astrLast = false;
            f_astrMax = false;
            f_astrMin = false;
            f_astrSize = false;
            _read();
        }
        private void _read()
        {
            _aint = new List<uint>();
            for (var i = 0; i < 4; i++)
            {
                _aint.Add(m_io.ReadU4le());
            }
            _afloat = new List<double>();
            for (var i = 0; i < 3; i++)
            {
                _afloat.Add(m_io.ReadF8le());
            }
            _astr = new List<string>();
            for (var i = 0; i < 3; i++)
            {
                _astr.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true)));
            }
        }
        public double AfloatFirst
        {
            get
            {
                if (f_afloatFirst)
                    return _afloatFirst;
                f_afloatFirst = true;
                _afloatFirst = (double) (Afloat[0]);
                return _afloatFirst;
            }
        }
        public double AfloatLast
        {
            get
            {
                if (f_afloatLast)
                    return _afloatLast;
                f_afloatLast = true;
                _afloatLast = (double) (Afloat[Afloat.Count - 1]);
                return _afloatLast;
            }
        }
        public double AfloatMax
        {
            get
            {
                if (f_afloatMax)
                    return _afloatMax;
                f_afloatMax = true;
                _afloatMax = (double) (Afloat.Max());
                return _afloatMax;
            }
        }
        public double AfloatMin
        {
            get
            {
                if (f_afloatMin)
                    return _afloatMin;
                f_afloatMin = true;
                _afloatMin = (double) (Afloat.Min());
                return _afloatMin;
            }
        }
        public int AfloatSize
        {
            get
            {
                if (f_afloatSize)
                    return _afloatSize;
                f_afloatSize = true;
                _afloatSize = (int) (Afloat.Count);
                return _afloatSize;
            }
        }
        public uint AintFirst
        {
            get
            {
                if (f_aintFirst)
                    return _aintFirst;
                f_aintFirst = true;
                _aintFirst = (uint) (Aint[0]);
                return _aintFirst;
            }
        }
        public uint AintLast
        {
            get
            {
                if (f_aintLast)
                    return _aintLast;
                f_aintLast = true;
                _aintLast = (uint) (Aint[Aint.Count - 1]);
                return _aintLast;
            }
        }
        public uint AintMax
        {
            get
            {
                if (f_aintMax)
                    return _aintMax;
                f_aintMax = true;
                _aintMax = (uint) (Aint.Max());
                return _aintMax;
            }
        }
        public uint AintMin
        {
            get
            {
                if (f_aintMin)
                    return _aintMin;
                f_aintMin = true;
                _aintMin = (uint) (Aint.Min());
                return _aintMin;
            }
        }
        public int AintSize
        {
            get
            {
                if (f_aintSize)
                    return _aintSize;
                f_aintSize = true;
                _aintSize = (int) (Aint.Count);
                return _aintSize;
            }
        }
        public string AstrFirst
        {
            get
            {
                if (f_astrFirst)
                    return _astrFirst;
                f_astrFirst = true;
                _astrFirst = (string) (Astr[0]);
                return _astrFirst;
            }
        }
        public string AstrLast
        {
            get
            {
                if (f_astrLast)
                    return _astrLast;
                f_astrLast = true;
                _astrLast = (string) (Astr[Astr.Count - 1]);
                return _astrLast;
            }
        }
        public string AstrMax
        {
            get
            {
                if (f_astrMax)
                    return _astrMax;
                f_astrMax = true;
                _astrMax = (string) (Astr.Max());
                return _astrMax;
            }
        }
        public string AstrMin
        {
            get
            {
                if (f_astrMin)
                    return _astrMin;
                f_astrMin = true;
                _astrMin = (string) (Astr.Min());
                return _astrMin;
            }
        }
        public int AstrSize
        {
            get
            {
                if (f_astrSize)
                    return _astrSize;
                f_astrSize = true;
                _astrSize = (int) (Astr.Count);
                return _astrSize;
            }
        }
        public List<uint> Aint { get { return _aint; } }
        public List<double> Afloat { get { return _afloat; } }
        public List<string> Astr { get { return _astr; } }
        public ExprArray M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_afloatFirst;
        private double _afloatFirst;
        private bool f_afloatLast;
        private double _afloatLast;
        private bool f_afloatMax;
        private double _afloatMax;
        private bool f_afloatMin;
        private double _afloatMin;
        private bool f_afloatSize;
        private int _afloatSize;
        private bool f_aintFirst;
        private uint _aintFirst;
        private bool f_aintLast;
        private uint _aintLast;
        private bool f_aintMax;
        private uint _aintMax;
        private bool f_aintMin;
        private uint _aintMin;
        private bool f_aintSize;
        private int _aintSize;
        private bool f_astrFirst;
        private string _astrFirst;
        private bool f_astrLast;
        private string _astrLast;
        private bool f_astrMax;
        private string _astrMax;
        private bool f_astrMin;
        private string _astrMin;
        private bool f_astrSize;
        private int _astrSize;
        private List<uint> _aint;
        private List<double> _afloat;
        private List<string> _astr;
        private ExprArray m_root;
        private KaitaiStruct m_parent;
    }
}
