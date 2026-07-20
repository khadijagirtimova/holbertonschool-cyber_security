# Task 4: Persistence Using BITSAdmin

## 1. Introduction

### Overview of BITS and Its Role in Windows
Background Intelligent Transfer Service (BITS), Windows əməliyyat sistemində fayl transferi üçün nəzərdə tutulmuş xidmətdir. Əsasən Windows Update, Microsoft Defender yeniləmələri və digər sistem komponentləri tərəfindən istifadə olunur. BITS-in əsas xüsusiyyətləri:

- **Asinxron transfer**: Faylları arxa planda, istifadəçiyə mane olmadan yükləyir
- **Şəbəkə adaptasiyası**: Şəbəkə trafikini dinamik olaraq tənzimləyir
- **Dayanıqlılıq**: Bağlantı kəsildikdə avtomatik bərpa
- **Prioritet sistemi**: Transferləri prioritetə görə sıralayır
- **Sistem rebootuna dözümlülük**: Kompüter yenidən başladıldıqda belə aktiv qalır

### How Attackers Abuse BITS for Persistence
Təhlükəsizlik tədqiqatçıları və zərərli proqram müəllifləri BITS-i aşağıdakı səbəblərə görə sui-istifadə edirlər:

1. **Qanuni sistem komponenti**: Windows-un etibarlı komponenti olduğu üçün antivirus proqramları nadir hallarda bloklayır
2. **Persistence**: Sistem rebootundan sonra belə aktiv qalır
3. **Stealth**: Transfer tarixçəsi Event Log-larda görünsə də, execution indikatorları məhduddur
4. **SYSTEM konteksti**: BITS xidməti SYSTEM hüquqları ilə işləyir
5. **Scheduled Tasks ilə kombinasiya**: Daha mürəkkəb persistence mexanizmləri yaradıla bilər

## 2. Understanding BITS and Its Capabilities

### How BITS Functions in Windows
BITS xidməti Windows-da aşağıdakı komponentlərdən ibarətdir:
